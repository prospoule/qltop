# -*- coding: utf-8 -*-
"""
/***************************************************************************
 QLtop
                                 A QGIS plugin
 Outil interactif de préanalyse pour le logiciel LTOP
 Generated by Plugin Builder: http://g-sherman.github.io/Qgis-Plugin-Builder/
                             -------------------
        begin                : 2020-09-25
        git sha              : $Format:%H$
        copyright            : (C) 2020 by HEIG-VD | Nicolas Szakacs
        email                : nicolas.szakacs@heig-vd.ch
 ***************************************************************************/

/***************************************************************************
 *                                                                         *
 *   This program is free software; you can redistribute it and/or modify  *
 *   it under the terms of the GNU General Public License as published by  *
 *   the Free Software Foundation; Version 3 of the License.               *
 *                                                                         *
 ***************************************************************************/
"""

import os

import sqlite3
from sqlite3 import Error

from qgis.core import Qgis
from qgis.utils import iface

from pathlib import Path  ## filesystem paths normalization

from qltop.core.general_tools import *


class createDB:
    """
    Purpose :
         - Create a new .qlotp database file
    Input :
         - qltop_schema.sql schema file
    Output :
         - .qltop file in the working directory
    """

    # Class variables
    extension = ".qltop"  # Default extension for the new database file
    sql_schema = "qltop_schema.sql"

    dat_init = [
                    ["IF", "default.koo", "default.mes", "", "", "", "", "", ""],
                    ["OF", "default.prn", "default.res", "default.ipl", "", "", "", "", ""],
                    ["00", "", "", "", "", "", "", "", ""],
                    ["01", "KOORD", 0, "", "", "", "", "", ""],
                    ["01", "RUNDUNG", 4, "", "", "", "", "", ""],
                    ["01", "KAT", 0, 0, "", "", "", "", ""],
                    ["02", "LAGEITER", "10", "", "", "", "", "", ""],
                    ["03", "HOEHEITE", "10", "", "", "", "", "", ""],
                    ["04", "LAGE ABB", "1", "", "", "", "", "", ""],
                    ["05", "HOEHEABB", "1", "", "", "", "", "", ""],
                    ["07", "MF RI+AZ", "5.0", "5.0", "", "", "", "", ""],
                    ["08", "DIST.RED", "", "0", "", "", "", "", ""],
                    ["09", "MF H.DIS", "", "", "", "", "", "", ""],
                    ["10", "MF HW", "", "", "", "", "", "", ""],
                    ["11", "MF IH-SH", "", "", "", "", "", "", ""],
                    ["12", "REFRAKT.", "0.130", "0.500", "", "", "", "", ""],
                    ["13", "", "", 0, "", "", "", "", ""],
                    ["14", "KOO.VERZ", 2, 0, 1, "", 1, 0, ""],
                    ["14", "PLOT", 0, "", "0", 1, "0", "", "0"],
                    ["15", "MATRIZEN", 0, 0, "", "", "", "", ""],
                    ["16", "PRAEANA.", 3, "", "", "", "", "", ""],
                    ["17", "PROGVERS", 5, 0, 1, "62", "", "", ""],
                    ["17", "ELLIPSOI", 0, "6377397.1550", "0.0066743722310", "CH", "", "", ""],
                    ["17", "ROBUST", "0.00", "0.00", "", "", "", "", ""],
                    ["18", "I.ZUVERL", "3.50", "5.0", "3.50", "5.0", "20.0", "", ""],
                    ["18", "FIAB", 2, "", "", "", "", "", ""],
                    ["20", "MN95", "2600000.0000", "1200000.0000", "0.0000", "", "", "", ""]
                ]
    
    dat_grp_distance_init = [
                                ["06", "DIST.GR.", "1", "", "", "2.0", "MESSBAND", "300.0", "0.0"],
                                ["06", "DIST.GR.", "2", "", "", "1.0", "2M-BASIS", "10.0", "2500.0"],
                                ["06", "DIST.GR.", "3", "", "", "1.0", "EDM", "1.0", "0.0"]
                            ]

    dat_grp_direction_init = [
                                ["06", "RI", "1", "3.0"]
                            ]

    def __init__(self, db_name):
        self.db_name = gt_check_exist_file(db_name + self.extension)
        self.signal = self.create_schema()  ## Tell the plugin if there is a problem with the schema.sql

    def create_schema(self):
        """ Create all the empty tables """
        try:
            # Add preconfigured schema.sql file
            plugin_folder = os.path.dirname(os.path.dirname(__file__))
            sql_schema = Path(plugin_folder) / "sql" / self.sql_schema

            if sql_schema.is_file():  # Test if file exist, avoid error if he is missing

                try:
                    # Create the qltop database
                    connection = sqlite3.connect(self.db_name, timeout=11)
                    cursor = connection.cursor()

                    with open(sql_schema) as schema:
                        cursor.executescript(schema.read())

                    sql_insert_dat_init = \
                        """
                        INSERT INTO dat_conf (id_conf, ka, param1, param2, param3, param4, param5, param6, param7, param8)
                        VALUES (Null, ?, ?, ?, ?, ?, ?, ?, ?, ?);
                        """
                    sql_insert_dat_grp_distance_init = \
                        """
                        INSERT INTO grp_distance (id_grpdis, ka, ka_name, no_grp, cst_add, corr_ech, coefA, descr, coefB, coefC)
                        VALUES (Null, ?, ?, ?, ?, ?, ?, ?, ?, ?);
                        """
                    sql_insert_dat_grp_direction_init = \
                        """
                        INSERT INTO grp_direction (id_grpdir, ka, ka_name, no_grp, err_moy)
                        VALUES (Null, ?, ?, ?, ?);
                        """

                    cursor.executemany(sql_insert_dat_init, self.dat_init)
                    cursor.executemany(sql_insert_dat_grp_distance_init, self.dat_grp_distance_init)
                    cursor.executemany(sql_insert_dat_grp_direction_init, self.dat_grp_direction_init)

                    iface.messageBar().pushMessage("Info : ",
                                                   u"*** Création de la base de données '{}' effectué ***".format(self.db_name),
                                                   level=Qgis.Info,
                                                   duration=2)
                    connection.commit()
                    cursor.close()
                except sqlite3.Error as error:
                    print("Database -> Failed create a new .qltop database ", error)
                finally:
                    if (connection):
                        connection.close()
                signal = 0  ## no problem with the qltop_schema.sql file
            else:

                iface.messageBar().pushMessage("Attention : ",
                                               u"*** Création de la base de données '{}' échoué , \
                                               fichier 'qltop_schema.sql' manquant ***".format(self.db_name),
                                               level=Qgis.Warning,
                                               duration=3)
                signal = 1  ## qltop_schema.sql is missing
        except:
            print("Database -> Failed to create a new db.qltop database with a specific schema")
        finally:
            return signal

################################################################################################
################################# GENERAL TOOLS PART ###########################################
################################################################################################


class generalToolsDB:

    @staticmethod
    def select_tbl_items(db_name, tbl_name):
        """
            Query to select all entries from a table in the database
            Input : database name, table to query
        """
        try:
            connection = sqlite3.connect(db_name, timeout=11)
            sql_query = "SELECT * FROM {}".format(tbl_name)
            cursor = connection.cursor()
            resultats = cursor.execute(sql_query).fetchall()
            connection.commit()
            cursor.close()
        except sqlite3.Error as error:
            print("Database -> Failed to select rows from the {} table ", error).format(tbl_name)
        finally:
            if (connection):
                connection.close()
                return resultats

    @staticmethod
    def add_new_row(db_name, table_name):
        """ Add a new empty row with default values """
        try:
            connection = sqlite3.connect(db_name, timeout=11)
            sql_query = "INSERT INTO {} DEFAULT VALUES;".format(table_name)
            cursor = connection.cursor()
            cursor.execute(sql_query)
            connection.commit()
            cursor.close()
        except sqlite3.Error as error:
            print("Database -> Failed to add a new row in the {} table".format(table_name), error)
        finally:
            if (connection):
                connection.close()

    @staticmethod
    def rmv_sel_row(db_name, table_name, id_name, data):
        """ Delete selected rows in a chosen table """
        try:
            connection = sqlite3.connect(db_name, timeout=11)
            sql_query = "DELETE FROM {} WHERE {} = (?);".format(table_name, id_name)
            cursor = connection.cursor()
            cursor.executemany(sql_query, data)
            connection.commit()
            cursor.close()
        except sqlite3.Error as error:
            print("Database -> Failed to delete row in the {} table".format(table_name), error)
        finally:
            if (connection):
                connection.close()

################################################################################################
########################################## .KOO PART ###########################################
################################################################################################


class managePointsDB:
    """ The purpose of this class is to provide tools to manage the 'point' table """

    @staticmethod
    def insert_point_pk_table(db_name, data):
        """ Insert new points from coordinate file into the point_pk table """
        try:
            connection = sqlite3.connect(db_name, timeout=11)
            sql_insert_value = \
                """
                INSERT INTO point_pk (id_point, nom, pfp, pfa, ty, date_rep, ordre, num_carte,
                                         coordY, coordX, coord_prov, altitudeH, altitude_prov, coord_code,
                                         geoide_cote, geoide_prov, ellips_code, dev_vert_ETA, dev_vert_XI,
                                         dev_vert_prov,dev_vert_ETA0, dev_vert_XI0, dev_vert_prov0,
                                         code_raumtri, num_cont,flag_gps, num_sess_gps, num_zone, reserve)
                VALUES (Null, ?, 0, 0, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?);
                """
            cursor = connection.cursor()
            row_count = cursor.executemany(sql_insert_value, data).rowcount
            connection.commit()
            cursor.close()
        except sqlite3.Error as error:
            print("Database -> Failed to insert new points in the point_pk table", error)
        finally:
            if (connection):
                connection.close()
                return row_count

    @staticmethod
    def add_qgs_point(db_name, data):
        """
            Add new entry in the database.qltop, table "point_pk"
            Only the geometry attributes are entered
        """
        try:
            connection = sqlite3.connect(db_name, timeout=11)
            sql_insert_value = "INSERT INTO point_pk (coordY, coordX) VALUES (?, ?);"
            cursor = connection.cursor()
            cursor.executemany(sql_insert_value, data)
            connection.commit()
            cursor.close()
        except sqlite3.Error as error:
            print("Database -> Failed to add a qgs point in the point_pk table", error)
        finally:
            if (connection):
                connection.close()

    @staticmethod
    def change_point_fixe(db_name, field_name, bool_value, row_list):
        """
            Update the database.qltop, table "point_pk"
            Define a new value for the PFP/PFA attribute
            - database.qltop name
            - id number used to change the pfp/pfa boolean value
            - field name to change PFP/PFA
            - boolean value to change : 0 = fixed / 1 = variable
        """
        try:
            connection = sqlite3.connect(db_name, timeout=11)
            sql_query = "UPDATE point_pk SET {} = {} WHERE id_point = (?);".format(field_name, bool_value)
            cursor = connection.cursor()
            cursor.executemany(sql_query, row_list)
            connection.commit()
            cursor.close()
        except sqlite3.Error as error:
            print("Database -> Failed to update the fixed/variable attributes from the point_pk table", error)
        finally:
            if (connection):
                connection.close()

    @staticmethod
    def change_string_attr(db_name, field_name, new_value, row_list):
        """
            Update the database.qltop, table "point_pk"
            Define a new value for the string attributes
            - database.qltop name
            - id number
            - field name
            - new string value
        """
        try:
            connection = sqlite3.connect(db_name, timeout=11)
            sql_query = "UPDATE point_pk SET {} = '{}' WHERE id_point = (?);".format(field_name, new_value)
            cursor = connection.cursor()
            cursor.executemany(sql_query, row_list)
            connection.commit()
            cursor.close()
        except sqlite3.Error as error:
            print("Database -> Failed to update the attributes from the point_pk table", error)
        finally:
            if (connection):
                connection.close()

################################################################################################
########################################## .MES PART ###########################################
################################################################################################


class manageMeasureDB:
    """ The purpose of this class is to provide tools to manage the 'station' and 'mesure' tables """

    @staticmethod
    def insert_station_table(db_name, data):
        """ Insert new station from Ltop.mes file into the mes_station table """
        try:
            connection = sqlite3.connect(db_name, timeout=11)
            sql_insert_value = \
                """
                INSERT INTO mes_station (id_st, ka, point, num_point, ty, meteo,
                em, groupe, hi, carnet, responsable, ec)
                VALUES (Null, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?);
                """
            cursor = connection.cursor()
            row_count = cursor.executemany(sql_insert_value, data).rowcount
            connection.commit()
            cursor.close()
        except sqlite3.Error as error:
            print("Database -> Failed to insert new points in the mes_station table", error)
        finally:
            if (connection):
                connection.close()
                return row_count

    @staticmethod
    def insert_mesure_table(db_name, data):
        """ Insert new mesure from Ltop.mes file into the mes_mesure table """
        try:
            connection = sqlite3.connect(db_name, timeout=11)
            sql_insert_value = \
                """
                INSERT INTO mes_mesure (id_mes, point, num_point, nom, ty, ri,
                zd, ds, em_ri, em_zd, em_ds, gr_ri, gr_zd, gr_ds, hi, hs, ec)
                VALUES (Null, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?);
                """
            cursor = connection.cursor()
            row_count = cursor.executemany(sql_insert_value, data).rowcount
            connection.commit()
            cursor.close()
        except sqlite3.Error as error:
            print("Database -> Failed to insert new points in the mes_mesure table", error)
        finally:
            if (connection):
                connection.close()
                return row_count

    @staticmethod
    def mes_station_duplicate(db_name, data):
        """ Duplicate an entire row of the station table """
        try:
            connection = sqlite3.connect(db_name, timeout=11)
            sql_query =  \
                """
                INSERT INTO mes_station (ka, point, num_point, ty, meteo, em, groupe, hi, carnet, responsable, ec)
                SELECT ka, point, num_point, ty, meteo, em, groupe, hi, carnet, responsable, ec
                FROM mes_station
                WHERE id_st = (?);
                """
            cursor = connection.cursor()
            cursor.executemany(sql_query, data)
            connection.commit()
            cursor.close()
        except sqlite3.Error as error:
            print("Database -> Failed to a row in the mes_station table", error)
        finally:
            if (connection):
                connection.close()

    @staticmethod
    def mes_mesure_duplicate(db_name, data):
        """ Duplicate an entire row of the measurement table """
        try:
            connection = sqlite3.connect(db_name, timeout=11)
            sql_query =  \
                """
                INSERT INTO mes_mesure (point, num_point, nom, ty, ri, zd, ds, em_ri, em_zd, em_ds, gr_ri, gr_zd, gr_ds, hi, hs, ec)
                SELECT point, num_point, nom, ty, ri, zd, ds, em_ri, em_zd, em_ds, gr_ri, gr_zd, gr_ds, hi, hs, ec
                FROM mes_mesure
                WHERE id_mes = (?);
                """
            cursor = connection.cursor()
            cursor.executemany(sql_query, data)
            connection.commit()
            cursor.close()
        except sqlite3.Error as error:
            print("Database -> Failed to a row in the mes_mesure table", error)
        finally:
            if (connection):
                connection.close()

    @staticmethod
    def mes_add_row_attr(db_name, data):
        """
            Add new entry in the database.qltop, table "mes_mesure"
            with a copy of the selected station attributes
        """
        try:
            connection = sqlite3.connect(db_name, timeout=11)
            sql_query = "INSERT INTO mes_mesure (point, num_point) VALUES ('{}', {});".format(data[0], data[1])
            cursor = connection.cursor()
            cursor.execute(sql_query)
            connection.commit()
            cursor.close()
        except sqlite3.Error as error:
            print("Database -> Failed to insert a new row in the 'mes_mesure' table", error)
        finally:
            if (connection):
                connection.close()

################################################################################################
########################################## .DAT PART ###########################################
################################################################################################


class manageDatDB:
    """
    The purpose of this class is to provide tools to
    update the Ltop.DAT configuration data in 'dat_conf' table
    """

    # Class variables
    table = "dat_conf"

    @classmethod
    def select_ka_param(cls, db_name, param, ka):
        """ Select data in the dat_conf table with a given KA parameter """
        try:
            connection = sqlite3.connect(db_name, timeout=11)
            sql_query = "SELECT {} FROM {} WHERE ka = '{}';".format(param, cls.table, ka)
            cursor = connection.cursor()
            result = cursor.execute(sql_query).fetchone()
            connection.commit()
            cursor.close()
        except sqlite3.Error as error:
            print("Database -> Failed to select data in the 'dat_conf' table", error)
        finally:
            if (connection):
                connection.close()
                return result

    @classmethod
    def update_ka_param(cls, db_name, param, val, ka):
        """ Update the dat_conf table with a given value and a KA parameter """
        try:
            connection = sqlite3.connect(db_name, timeout=11)
            sql_query = "UPDATE {} SET {} = '{}' WHERE ka = '{}';".format(cls.table, param, val, ka)
            cursor = connection.cursor()
            cursor.execute(sql_query)
            connection.commit()
            cursor.close()
        except sqlite3.Error as error:
            print("Database -> Failed to update data in the 'dat_conf' table", error)
        finally:
            if (connection):
                connection.close()

    @classmethod
    def update_ka_param_fix(cls, db_name, param, val, ka, param_fix):
        """ Update the dat_conf table with a given value and a KA parameter WITH a description """
        try:
            connection = sqlite3.connect(db_name, timeout=11)
            sql_query = "UPDATE {} SET {} = '{}' WHERE ka = '{}' AND param1 = '{}';".format(cls.table, param, val, ka, param_fix)
            cursor = connection.cursor()
            cursor.execute(sql_query)
            connection.commit()
            cursor.close()
        except sqlite3.Error as error:
            print("Database -> Failed to update data in the 'dat_conf' table", error)
        finally:
            if (connection):
                connection.close()

    @staticmethod
    def set_var_point(db_name, var_point):
        """ Set the variable points from the Ltop.dat file  """
        try:
            connection = sqlite3.connect(db_name, timeout=11)
            sql_query_reset_plani = "UPDATE point_pk SET pfp = 0;"  ## init, set all to fixed
            sql_query_reset_alti = "UPDATE point_pk SET pfa = 0;"   ## init, set all to fixed
            sql_query_plani = "UPDATE point_pk SET pfp = 1 WHERE nom = (?);"
            sql_query_alti = "UPDATE point_pk SET pfa = 1 WHERE nom = (?);"
            cursor = connection.cursor()
            cursor.execute(sql_query_reset_plani)
            cursor.execute(sql_query_reset_alti)
            cursor.executemany(sql_query_plani, var_point["var_plani"])
            cursor.executemany(sql_query_alti, var_point["var_alti"])
            connection.commit()
            cursor.close()
        except sqlite3.Error as error:
            print("Database -> Failed to set the variable points from the Ltop.dat file in the 'point_pk' table", error)
        finally:
            if (connection):
                connection.close()

    @staticmethod
    def set_rel_point(db_name, pnt_reliab):
        """ Set the relatives ellipses and reliability in the db.qltop tables """
        try:
            connection = sqlite3.connect(db_name, timeout=11)
            sql_reset_ellips = "DELETE FROM rel_ellips;"  ## init, erase all
            sql_reset_reliab = "DELETE FROM rel_fiab;"    ## init, erase all
            sql_set_ellips = "INSERT INTO rel_ellips (id_ellip, point1, epoque1, point2, epoque2) VALUES (Null, ?, ?, ?, ?);"
            sql_set_reliab = "INSERT INTO rel_fiab (id_fiab, point1, epoque1, point2, epoque2) VALUES (Null, ?, ?, ?, ?);"
            cursor = connection.cursor()
            cursor.execute(sql_reset_ellips)
            cursor.execute(sql_reset_reliab)
            cursor.executemany(sql_set_ellips, pnt_reliab["pnt_ellips"])
            cursor.executemany(sql_set_reliab, pnt_reliab["pnt_fiabil"])
            connection.commit()
            cursor.close()
        except sqlite3.Error as error:
            print("Database -> Failed to set relatives points in the 'rel_ellips', 'rel_fiab' tables", error)
        finally:
            if (connection):
                connection.close()

    @staticmethod
    def set_grp_distance(db_name, grp_dist):
        """ Set the distance group data in the qltop 'grp_distance' table """
        try:
            connection = sqlite3.connect(db_name, timeout=11)
            sql_query_init = "DELETE FROM grp_distance;"  ## init, erase all
            sql_query_set = """
                             INSERT INTO grp_distance (id_grpdis, no_grp, cst_add, corr_ech, coefA, descr, coefB, coefC)
                             VALUES (Null, ?, ?, ?, ?, ?, ?, ?);
                             """
            cursor = connection.cursor()
            cursor.execute(sql_query_init)
            cursor.executemany(sql_query_set, grp_dist)
            connection.commit()
            cursor.close()
        except sqlite3.Error as error:
            print("Database -> Failed to set the distance group data in the 'grp_distance' table", error)
        finally:
            if (connection):
                connection.close()

    @staticmethod
    def set_grp_direction(db_name, grp_dir):
        """ Set the direction group data in the qltop 'grp_direction' table """
        try:
            connection = sqlite3.connect(db_name, timeout=11)
            sql_query_init = "DELETE FROM grp_direction;"  ## init, erase all
            sql_query_set = """
                             INSERT INTO grp_direction (id_grpdir, no_grp, err_moy)
                             VALUES (Null, ?, ?);
                             """
            cursor = connection.cursor()
            cursor.execute(sql_query_init)
            cursor.executemany(sql_query_set, grp_dir)
            connection.commit()
            cursor.close()
        except sqlite3.Error as error:
            print("Database -> Failed to set the direction group data in the 'grp_direction' table", error)
        finally:
            if (connection):
                connection.close()
