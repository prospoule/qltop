-- TABLE
---- Ltop.Dat configuration table
CREATE TABLE dat_conf (
                                    id_conf integer PRIMARY KEY AUTOINCREMENT,
                                    ka VARCHAR(2) NULL,
                                    param1 VARCHAR NULL,
                                    param2 VARCHAR NULL,
                                    param3 VARCHAR NULL,
                                    param4 VARCHAR NULL,
                                    param5 VARCHAR NULL,
                                    param6 VARCHAR NULL,
                                    param7 VARCHAR NULL,
                                    param8 VARCHAR NULL
                                    );
---- Ltop.Dat, Distance group, KA 06 DIST.GR.
CREATE TABLE grp_distance (
                                        id_grpdis integer PRIMARY KEY AUTOINCREMENT,
                                        ka VARCHAR(2) DEFAULT '06' NOT NULL,
                                        ka_name VARCHAR DEFAULT 'DIST.GR.' NOT NULL,
                                        no_grp VARCHAR NULL,
                                        cst_add VARCHAR NULL,
                                        corr_ech VARCHAR NULL,
                                        coefA VARCHAR NULL,
                                        descr VARCHAR NULL,
                                        coefB VARCHAR NULL,
                                        coefC VARCHAR NULL
                                        );
---- Ltop.Dat, Direction group, KA 06 RI
CREATE TABLE grp_direction (
                                         id_grpdir integer PRIMARY KEY AUTOINCREMENT,
                                         ka VARCHAR(2) DEFAULT '06' NOT NULL,
                                         ka_name VARCHAR DEFAULT 'RI' NOT NULL,
                                         no_grp VARCHAR NULL,
                                         err_moy VARCHAR NULL
                                         );
---- Measurement table
CREATE TABLE mes_mesure (
                                      id_mes integer PRIMARY KEY AUTOINCREMENT,
                                      point VARCHAR(10) NULL,
                                      num_point VARCHAR DEFAULT '1' NOT NULL,
                                      nom VARCHAR(10) NULL,
                                      ty VARCHAR(4) NULL,
                                      ri VARCHAR DEFAULT '50' NOT NULL,
                                      zd VARCHAR DEFAULT '100' NOT NULL,
                                      ds VARCHAR DEFAULT '200' NOT NULL,
                                      em_ri VARCHAR NULL,
                                      em_zd VARCHAR NULL,
                                      em_ds VARCHAR NULL,
                                      gr_ri VARCHAR NULL,
                                      gr_zd VARCHAR NULL,
                                      gr_ds VARCHAR NULL,
                                      hi VARCHAR NULL,
                                      hs VARCHAR DEFAULT '0' NOT NULL,
                                      ec VARCHAR NULL
                                      );
---- Station table
CREATE TABLE mes_station (
                                       id_st integer PRIMARY KEY AUTOINCREMENT,
                                       ka VARCHAR(2) DEFAULT 'ST' NOT NULL,
                                       point VARCHAR(10) NULL,
                                       num_point VARCHAR DEFAULT '1' NOT NULL,
                                       ty VARCHAR(4) NULL,
                                       meteo VARCHAR(12) NULL,
                                       em VARCHAR NULL,
                                       groupe VARCHAR NULL,
                                       hi VARCHAR DEFAULT '0' NOT NULL,
                                       carnet VARCHAR(8) NULL,
                                       responsable VARCHAR(18) NULL,
                                       ec VARCHAR NULL
                                       );
---- Point in format $$PK table
CREATE TABLE point_pk (
                                    id_point integer PRIMARY KEY AUTOINCREMENT,
                                    nom VARCHAR(10) NULL,
                                    pfp integer DEFAULT 0 NOT NULL, ---- KA 30, 0 = fixed, 1 = variable
                                    pfa integer DEFAULT 0 NOT NULL, ---- KA 35, 0 = fixed, 1 = variable
                                    ty VARCHAR(4) NULL,
                                    date_rep VARCHAR(8) NULL,
                                    ordre VARCHAR(4) NULL,
                                    num_carte VARCHAR(6) NULL,
                                    coordY VARCHAR DEFAULT '0.0000' NOT NULL,
                                    coordX VARCHAR DEFAULT '0.0000' NOT NULL,
                                    coord_prov VARCHAR(4) NULL,
                                    altitudeH VARCHAR DEFAULT '0.0000' NOT NULL,
                                    altitude_prov VARCHAR(4) NULL,
                                    coord_code VARCHAR(2) NULL,
                                    geoide_cote VARCHAR NULL,
                                    geoide_prov VARCHAR(4) NULL,
                                    ellips_code VARCHAR(2) NULL,
                                    dev_vert_ETA VARCHAR NULL,
                                    dev_vert_XI VARCHAR NULL,
                                    dev_vert_prov VARCHAR(4) NULL,
                                    dev_vert_ETA0 VARCHAR NULL,
                                    dev_vert_XI0 VARCHAR NULL,
                                    dev_vert_prov0 VARCHAR(4) NULL,
                                    code_raumtri VARCHAR(4) NULL,
                                    num_cont VARCHAR(3) NULL,
                                    flag_gps VARCHAR(2) NULL,
                                    num_sess_gps VARCHAR(4) NULL,
                                    num_zone VARCHAR(3) NULL,
                                    reserve VARCHAR(22) NULL
                                    );
---- Ltop.Dat, Relative error ellipse, first and second point, KA 50
CREATE TABLE rel_ellips (
                                     id_ellip integer PRIMARY KEY AUTOINCREMENT,
                                     ka VARCHAR(2) DEFAULT '50' NOT NULL,
                                     point1 VARCHAR NULL,
                                     epoque1 varchar NULL,
                                     point2 VARCHAR NULL,
                                     epoque2 varchar NULL
                                     );
---- Ltop.Dat, Relative reliability, first and second point, KA 60
CREATE TABLE rel_fiab (
                                    id_fiab integer PRIMARY KEY AUTOINCREMENT,
                                    ka VARCHAR(2) DEFAULT '60' NOT NULL,
                                    point1 VARCHAR NULL,
                                    epoque1 varchar NULL,
                                    point2 VARCHAR NULL,
                                    epoque2 varchar NULL
                                    );
-- INDEX
 
-- TRIGGER
 
-- VIEW
CREATE VIEW fixed_point_view AS
                               SELECT id_point,
                                      nom,
                                      pfp,
                                      pfa,
                                      nom || " " || CASE WHEN pfp = 0 THEN "Fixe" ELSE "Variable" END  || " " || CASE WHEN pfa = 0 THEN "Fixe" ELSE "Variable" END filter
                               FROM point_pk;
CREATE VIEW mesure_view AS
                          SELECT mes_mesure.point || "_" || mes_mesure.num_point AS st_id_conc,
                                 mes_mesure.nom AS vise,
                                 mes_mesure.ty AS vise_ty,
                                 mes_mesure.ri AS vise_ri,
                                 mes_mesure.zd AS vise_zd,
                                 mes_mesure.ds AS vise_ds,
                                 mes_mesure.em_ri AS vise_em_ri,
                                 mes_mesure.em_zd AS vise_em_zd,
                                 mes_mesure.em_ds AS vise_em_ds,
                                 mes_mesure.gr_ri AS vise_gr_ri,
                                 mes_mesure.gr_zd AS vise_gr_zd,
                                 mes_mesure.gr_ds AS vise_gr_ds,
                                 mes_mesure.hi AS vise_hi,
                                 mes_mesure.hs AS vise_hs,
                                 mes_mesure.ec AS vise_ec,
                                 point_pk.coordY AS vise_y,
                                 point_pk.coordX AS vise_x,
                                 point_pk.altitudeH AS vise_h,
                                 CASE
                                     WHEN mes_mesure.ri != "" AND mes_mesure.zd != "" AND mes_mesure.ds != "" THEN 0
                                     WHEN mes_mesure.ri != "" AND mes_mesure.zd != "" AND mes_mesure.ds = "" THEN 1
                                     WHEN mes_mesure.ri != "" AND mes_mesure.zd = "" AND mes_mesure.ds != "" THEN 2
                                     WHEN mes_mesure.ri != "" AND mes_mesure.zd = "" AND mes_mesure.ds = "" THEN 3
                                     WHEN mes_mesure.ri = "" AND mes_mesure.zd != "" AND mes_mesure.ds != "" THEN 4
                                     WHEN mes_mesure.ri = "" AND mes_mesure.zd != "" AND mes_mesure.ds = "" THEN 5
                                     WHEN mes_mesure.ri = "" AND mes_mesure.zd = "" AND mes_mesure.ds != "" THEN 6
                                     ELSE 7
                                     END vise_category
                          FROM mes_mesure
                          INNER JOIN point_pk ON point_pk.nom = mes_mesure.nom;
CREATE VIEW station_mesure_view AS
                                  SELECT station_view.station,
                                         station_view.st_num,
                                         station_view.st_y,
                                         station_view.st_x,
                                         station_view.st_h,
                                         station_view.st_hi,
                                         mesure_view.vise,
                                         mesure_view.vise_y,
                                         mesure_view.vise_x,
                                         mesure_view.vise_h,
                                         mesure_view.vise_hs,
                                         mesure_view.vise_category
                                  FROM mesure_view
                                  INNER JOIN station_view ON station_view.st_id_conc = mesure_view.st_id_conc;
CREATE VIEW station_view AS
                           SELECT mes_station.point || "_" || mes_station.num_point AS st_id_conc,
                                  mes_station.point AS station,
                                  mes_station.num_point AS st_num,
                                  mes_station.ty AS st_ty,
                                  mes_station.meteo AS st_meteo,
                                  mes_station.em AS st_em,
                                  mes_station.groupe AS st_groupe,
                                  mes_station.hi AS st_hi,
                                  mes_station.carnet AS st_carnet,
                                  mes_station.responsable AS st_responsable,
                                  mes_station.ec AS st_ec,
                                  point_pk.coordY AS st_y,
                                  point_pk.coordX AS st_x,
                                  point_pk.altitudeH AS st_h
                           FROM mes_station
                           INNER JOIN point_pk ON point_pk.nom = mes_station.point;

