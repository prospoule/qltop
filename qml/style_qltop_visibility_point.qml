<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis maxScale="0" simplifyMaxScale="1" version="3.14.15-Pi" minScale="100000000" labelsEnabled="0" simplifyAlgorithm="0" hasScaleBasedVisibilityFlag="0" readOnly="0" simplifyDrawingTol="1" simplifyLocal="1" simplifyDrawingHints="0" styleCategories="AllStyleCategories">
  <flags>
    <Identifiable>1</Identifiable>
    <Removable>1</Removable>
    <Searchable>1</Searchable>
  </flags>
  <temporal accumulate="0" endField="" startField="" endExpression="" durationUnit="min" mode="0" enabled="0" fixedDuration="0" startExpression="" durationField="">
    <fixedRange>
      <start></start>
      <end></end>
    </fixedRange>
  </temporal>
  <renderer-v2 type="RuleRenderer" symbollevels="0" forceraster="0" enableorderby="0">
    <rules key="{f919b521-8a0a-4384-8f86-c11ade1e9437}">
      <rule symbol="0" key="{fdfe7289-0c34-44bc-b755-a1ee60a0955a}" label="Obstacle" filter=" &quot;Delta&quot; &lt;= 0"/>
      <rule symbol="1" key="{be437f7f-9b4c-49c8-8643-4cb956fdd045}" label="Pas d'information" filter=" &quot;Delta&quot; IS NULL"/>
      <rule symbol="2" key="{0fb1a1db-a55e-4912-b574-48ea62265211}" label="Pas d'obstacle" filter=" &quot;Delta&quot; > 0"/>
    </rules>
    <symbols>
      <symbol type="marker" force_rhr="0" alpha="1" clip_to_extent="1" name="0">
        <layer locked="0" class="SimpleMarker" pass="0" enabled="1">
          <prop k="angle" v="0"/>
          <prop k="color" v="255,0,0,255"/>
          <prop k="horizontal_anchor_point" v="1"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="name" v="circle"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="255,0,0,255"/>
          <prop k="outline_style" v="solid"/>
          <prop k="outline_width" v="0"/>
          <prop k="outline_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="outline_width_unit" v="MM"/>
          <prop k="scale_method" v="diameter"/>
          <prop k="size" v="2"/>
          <prop k="size_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="size_unit" v="MM"/>
          <prop k="vertical_anchor_point" v="1"/>
          <data_defined_properties>
            <Option type="Map">
              <Option type="QString" value="" name="name"/>
              <Option name="properties"/>
              <Option type="QString" value="collection" name="type"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol type="marker" force_rhr="0" alpha="1" clip_to_extent="1" name="1">
        <layer locked="0" class="SimpleMarker" pass="0" enabled="1">
          <prop k="angle" v="0"/>
          <prop k="color" v="213,180,60,255"/>
          <prop k="horizontal_anchor_point" v="1"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="name" v="circle"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="213,180,60,255"/>
          <prop k="outline_style" v="solid"/>
          <prop k="outline_width" v="0"/>
          <prop k="outline_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="outline_width_unit" v="MM"/>
          <prop k="scale_method" v="diameter"/>
          <prop k="size" v="2"/>
          <prop k="size_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="size_unit" v="MM"/>
          <prop k="vertical_anchor_point" v="1"/>
          <data_defined_properties>
            <Option type="Map">
              <Option type="QString" value="" name="name"/>
              <Option name="properties"/>
              <Option type="QString" value="collection" name="type"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol type="marker" force_rhr="0" alpha="1" clip_to_extent="1" name="2">
        <layer locked="0" class="SimpleMarker" pass="0" enabled="1">
          <prop k="angle" v="0"/>
          <prop k="color" v="82,255,70,255"/>
          <prop k="horizontal_anchor_point" v="1"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="name" v="circle"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="51,160,44,255"/>
          <prop k="outline_style" v="solid"/>
          <prop k="outline_width" v="0"/>
          <prop k="outline_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="outline_width_unit" v="MM"/>
          <prop k="scale_method" v="diameter"/>
          <prop k="size" v="1.5"/>
          <prop k="size_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="size_unit" v="MM"/>
          <prop k="vertical_anchor_point" v="1"/>
          <data_defined_properties>
            <Option type="Map">
              <Option type="QString" value="" name="name"/>
              <Option name="properties"/>
              <Option type="QString" value="collection" name="type"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
    </symbols>
  </renderer-v2>
  <customproperties>
    <property key="dualview/previewExpressions">
      <value>"Station"</value>
    </property>
    <property value="0" key="embeddedWidgets/count"/>
    <property key="variableNames"/>
    <property key="variableValues"/>
  </customproperties>
  <blendMode>0</blendMode>
  <featureBlendMode>0</featureBlendMode>
  <layerOpacity>1</layerOpacity>
  <SingleCategoryDiagramRenderer diagramType="Histogram" attributeLegend="1">
    <DiagramCategory penWidth="0" sizeType="MM" sizeScale="3x:0,0,0,0,0,0" rotationOffset="270" spacingUnitScale="3x:0,0,0,0,0,0" spacing="5" direction="0" scaleDependency="Area" backgroundColor="#ffffff" maxScaleDenominator="1e+08" penColor="#000000" diagramOrientation="Up" minScaleDenominator="0" backgroundAlpha="255" height="15" spacingUnit="MM" minimumSize="0" enabled="0" lineSizeScale="3x:0,0,0,0,0,0" barWidth="5" width="15" penAlpha="255" scaleBasedVisibility="0" showAxis="1" labelPlacementMethod="XHeight" lineSizeType="MM" opacity="1">
      <fontProperties description="MS Shell Dlg 2,8.25,-1,5,50,0,0,0,0,0" style=""/>
      <attribute field="" label="" color="#000000"/>
      <axisSymbol>
        <symbol type="line" force_rhr="0" alpha="1" clip_to_extent="1" name="">
          <layer locked="0" class="SimpleLine" pass="0" enabled="1">
            <prop k="capstyle" v="square"/>
            <prop k="customdash" v="5;2"/>
            <prop k="customdash_map_unit_scale" v="3x:0,0,0,0,0,0"/>
            <prop k="customdash_unit" v="MM"/>
            <prop k="draw_inside_polygon" v="0"/>
            <prop k="joinstyle" v="bevel"/>
            <prop k="line_color" v="35,35,35,255"/>
            <prop k="line_style" v="solid"/>
            <prop k="line_width" v="0.26"/>
            <prop k="line_width_unit" v="MM"/>
            <prop k="offset" v="0"/>
            <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
            <prop k="offset_unit" v="MM"/>
            <prop k="ring_filter" v="0"/>
            <prop k="use_custom_dash" v="0"/>
            <prop k="width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
            <data_defined_properties>
              <Option type="Map">
                <Option type="QString" value="" name="name"/>
                <Option name="properties"/>
                <Option type="QString" value="collection" name="type"/>
              </Option>
            </data_defined_properties>
          </layer>
        </symbol>
      </axisSymbol>
    </DiagramCategory>
  </SingleCategoryDiagramRenderer>
  <DiagramLayerSettings placement="0" zIndex="0" dist="0" linePlacementFlags="18" priority="0" obstacle="0" showAll="1">
    <properties>
      <Option type="Map">
        <Option type="QString" value="" name="name"/>
        <Option name="properties"/>
        <Option type="QString" value="collection" name="type"/>
      </Option>
    </properties>
  </DiagramLayerSettings>
  <geometryOptions geometryPrecision="0" removeDuplicateNodes="0">
    <activeChecks/>
    <checkConfiguration/>
  </geometryOptions>
  <referencedLayers/>
  <referencingLayers/>
  <fieldConfiguration>
    <field name="Station">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="St_H">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="St_Hi">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="Point_vise">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="Pnt_H">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="Pnt_Hs">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="H_doit">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="H_avoir">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="Delta">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="rvalue_1">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="rvalue_2">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="rvalue_3">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
  </fieldConfiguration>
  <aliases>
    <alias field="Station" index="0" name=""/>
    <alias field="St_H" index="1" name=""/>
    <alias field="St_Hi" index="2" name=""/>
    <alias field="Point_vise" index="3" name=""/>
    <alias field="Pnt_H" index="4" name=""/>
    <alias field="Pnt_Hs" index="5" name=""/>
    <alias field="H_doit" index="6" name=""/>
    <alias field="H_avoir" index="7" name=""/>
    <alias field="Delta" index="8" name=""/>
    <alias field="rvalue_1" index="9" name=""/>
    <alias field="rvalue_2" index="10" name=""/>
    <alias field="rvalue_3" index="11" name=""/>
  </aliases>
  <excludeAttributesWMS/>
  <excludeAttributesWFS/>
  <defaults>
    <default field="Station" expression="" applyOnUpdate="0"/>
    <default field="St_H" expression="" applyOnUpdate="0"/>
    <default field="St_Hi" expression="" applyOnUpdate="0"/>
    <default field="Point_vise" expression="" applyOnUpdate="0"/>
    <default field="Pnt_H" expression="" applyOnUpdate="0"/>
    <default field="Pnt_Hs" expression="" applyOnUpdate="0"/>
    <default field="H_doit" expression="" applyOnUpdate="0"/>
    <default field="H_avoir" expression="" applyOnUpdate="0"/>
    <default field="Delta" expression="" applyOnUpdate="0"/>
    <default field="rvalue_1" expression="" applyOnUpdate="0"/>
    <default field="rvalue_2" expression="" applyOnUpdate="0"/>
    <default field="rvalue_3" expression="" applyOnUpdate="0"/>
  </defaults>
  <constraints>
    <constraint field="Station" notnull_strength="0" exp_strength="0" constraints="0" unique_strength="0"/>
    <constraint field="St_H" notnull_strength="0" exp_strength="0" constraints="0" unique_strength="0"/>
    <constraint field="St_Hi" notnull_strength="0" exp_strength="0" constraints="0" unique_strength="0"/>
    <constraint field="Point_vise" notnull_strength="0" exp_strength="0" constraints="0" unique_strength="0"/>
    <constraint field="Pnt_H" notnull_strength="0" exp_strength="0" constraints="0" unique_strength="0"/>
    <constraint field="Pnt_Hs" notnull_strength="0" exp_strength="0" constraints="0" unique_strength="0"/>
    <constraint field="H_doit" notnull_strength="0" exp_strength="0" constraints="0" unique_strength="0"/>
    <constraint field="H_avoir" notnull_strength="0" exp_strength="0" constraints="0" unique_strength="0"/>
    <constraint field="Delta" notnull_strength="0" exp_strength="0" constraints="0" unique_strength="0"/>
    <constraint field="rvalue_1" notnull_strength="0" exp_strength="0" constraints="0" unique_strength="0"/>
    <constraint field="rvalue_2" notnull_strength="0" exp_strength="0" constraints="0" unique_strength="0"/>
    <constraint field="rvalue_3" notnull_strength="0" exp_strength="0" constraints="0" unique_strength="0"/>
  </constraints>
  <constraintExpressions>
    <constraint field="Station" desc="" exp=""/>
    <constraint field="St_H" desc="" exp=""/>
    <constraint field="St_Hi" desc="" exp=""/>
    <constraint field="Point_vise" desc="" exp=""/>
    <constraint field="Pnt_H" desc="" exp=""/>
    <constraint field="Pnt_Hs" desc="" exp=""/>
    <constraint field="H_doit" desc="" exp=""/>
    <constraint field="H_avoir" desc="" exp=""/>
    <constraint field="Delta" desc="" exp=""/>
    <constraint field="rvalue_1" desc="" exp=""/>
    <constraint field="rvalue_2" desc="" exp=""/>
    <constraint field="rvalue_3" desc="" exp=""/>
  </constraintExpressions>
  <expressionfields/>
  <attributeactions>
    <defaultAction value="{00000000-0000-0000-0000-000000000000}" key="Canvas"/>
  </attributeactions>
  <attributetableconfig sortExpression="&quot;H doit&quot;" sortOrder="0" actionWidgetStyle="dropDown">
    <columns>
      <column type="field" width="-1" hidden="0" name="Station"/>
      <column type="field" width="-1" hidden="0" name="St_H"/>
      <column type="field" width="-1" hidden="0" name="St_Hi"/>
      <column type="field" width="-1" hidden="0" name="Point_vise"/>
      <column type="field" width="-1" hidden="0" name="Pnt_H"/>
      <column type="field" width="-1" hidden="0" name="Pnt_Hs"/>
      <column type="field" width="-1" hidden="0" name="Delta"/>
      <column type="actions" width="-1" hidden="1"/>
      <column type="field" width="-1" hidden="0" name="H_doit"/>
      <column type="field" width="-1" hidden="0" name="H_avoir"/>
      <column type="field" width="-1" hidden="0" name="rvalue_1"/>
      <column type="field" width="-1" hidden="0" name="rvalue_2"/>
      <column type="field" width="-1" hidden="0" name="rvalue_3"/>
    </columns>
  </attributetableconfig>
  <conditionalstyles>
    <rowstyles/>
    <fieldstyles/>
  </conditionalstyles>
  <storedexpressions/>
  <editform tolerant="1"></editform>
  <editforminit/>
  <editforminitcodesource>0</editforminitcodesource>
  <editforminitfilepath></editforminitfilepath>
  <editforminitcode><![CDATA[# -*- coding: utf-8 -*-
"""
Les formulaires QGIS peuvent avoir une fonction Python qui sera appelée à l'ouverture du formulaire.

Utilisez cette fonction pour ajouter plus de fonctionnalités à vos formulaires.

Entrez le nom de la fonction dans le champ "Fonction d'initialisation Python".
Voici un exemple à suivre:
"""
from qgis.PyQt.QtWidgets import QWidget

def my_form_open(dialog, layer, feature):
    geom = feature.geometry()
    control = dialog.findChild(QWidget, "MyLineEdit")

]]></editforminitcode>
  <featformsuppress>0</featformsuppress>
  <editorlayout>generatedlayout</editorlayout>
  <editable>
    <field editable="1" name="Delta"/>
    <field editable="1" name="H avoir"/>
    <field editable="1" name="H doit"/>
    <field editable="1" name="H_avoir"/>
    <field editable="1" name="H_doit"/>
    <field editable="1" name="Pnt_H"/>
    <field editable="1" name="Pnt_Hs"/>
    <field editable="1" name="Point_vise"/>
    <field editable="1" name="St_H"/>
    <field editable="1" name="St_Hi"/>
    <field editable="1" name="Station"/>
    <field editable="1" name="rvalue_1"/>
    <field editable="1" name="rvalue_2"/>
    <field editable="1" name="rvalue_3"/>
  </editable>
  <labelOnTop>
    <field labelOnTop="0" name="Delta"/>
    <field labelOnTop="0" name="H avoir"/>
    <field labelOnTop="0" name="H doit"/>
    <field labelOnTop="0" name="H_avoir"/>
    <field labelOnTop="0" name="H_doit"/>
    <field labelOnTop="0" name="Pnt_H"/>
    <field labelOnTop="0" name="Pnt_Hs"/>
    <field labelOnTop="0" name="Point_vise"/>
    <field labelOnTop="0" name="St_H"/>
    <field labelOnTop="0" name="St_Hi"/>
    <field labelOnTop="0" name="Station"/>
    <field labelOnTop="0" name="rvalue_1"/>
    <field labelOnTop="0" name="rvalue_2"/>
    <field labelOnTop="0" name="rvalue_3"/>
  </labelOnTop>
  <dataDefinedFieldProperties/>
  <widgets/>
  <previewExpression>"Station"</previewExpression>
  <mapTip></mapTip>
  <layerGeometryType>0</layerGeometryType>
</qgis>
