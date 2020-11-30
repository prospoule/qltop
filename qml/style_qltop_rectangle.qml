<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis version="3.14.15-Pi" simplifyDrawingHints="1" readOnly="0" hasScaleBasedVisibilityFlag="0" minScale="100000000" simplifyMaxScale="1" maxScale="0" simplifyDrawingTol="1" simplifyLocal="1" labelsEnabled="1" styleCategories="AllStyleCategories" simplifyAlgorithm="0">
  <flags>
    <Identifiable>1</Identifiable>
    <Removable>1</Removable>
    <Searchable>1</Searchable>
  </flags>
  <temporal accumulate="0" endField="" enabled="0" startExpression="" startField="" fixedDuration="0" durationField="" mode="0" endExpression="" durationUnit="min">
    <fixedRange>
      <start></start>
      <end></end>
    </fixedRange>
  </temporal>
  <renderer-v2 symbollevels="0" forceraster="0" type="RuleRenderer" enableorderby="0">
    <rules key="{4a04a76b-9266-4ad7-94f7-3a815ed3e6fd}">
      <rule key="{8869bf73-e8c1-4cee-809c-de24c736fa17}" symbol="0" filter=" &quot;NA&quot; != 'infinite' OR  &quot;NB&quot; != 'infinite'" description="Défini" label="Défini"/>
      <rule key="{7f4173fe-45e1-4fce-a736-4bdfe61fc954}" symbol="1" filter="ELSE" description="Non défini" label="Infini"/>
    </rules>
    <symbols>
      <symbol clip_to_extent="1" type="fill" name="0" force_rhr="0" alpha="1">
        <layer enabled="1" pass="0" locked="0" class="SimpleFill">
          <prop k="border_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="color" v="255,0,0,255"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="255,127,0,255"/>
          <prop k="outline_style" v="solid"/>
          <prop k="outline_width" v="0.4"/>
          <prop k="outline_width_unit" v="MM"/>
          <prop k="style" v="no"/>
          <data_defined_properties>
            <Option type="Map">
              <Option value="" type="QString" name="name"/>
              <Option name="properties"/>
              <Option value="collection" type="QString" name="type"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol clip_to_extent="1" type="fill" name="1" force_rhr="0" alpha="1">
        <layer enabled="1" pass="0" locked="0" class="SimpleFill">
          <prop k="border_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="color" v="164,113,88,255"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="35,35,35,0"/>
          <prop k="outline_style" v="solid"/>
          <prop k="outline_width" v="0.26"/>
          <prop k="outline_width_unit" v="MM"/>
          <prop k="style" v="no"/>
          <data_defined_properties>
            <Option type="Map">
              <Option value="" type="QString" name="name"/>
              <Option name="properties"/>
              <Option value="collection" type="QString" name="type"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
    </symbols>
  </renderer-v2>
  <labeling type="rule-based">
    <rules key="{a2c0a233-9c94-4da9-aa8a-89c3bd38cbe9}">
      <rule key="{ce6f4526-6e3f-4ab4-b484-65331dc79cc1}" filter=" &quot;NA&quot;  = 'infinite' OR &quot;NB&quot; = 'infinite'" description="If infinite">
        <settings calloutType="simple">
          <text-style fontSizeUnit="Point" textOrientation="horizontal" allowHtml="0" fontItalic="0" fontUnderline="0" fontFamily="MS Shell Dlg 2" fontCapitals="0" fontKerning="1" fontSize="10" fontSizeMapUnitScale="3x:0,0,0,0,0,0" fontWordSpacing="0" isExpression="1" useSubstitutions="0" namedStyle="Normal" fieldName="'Infini'" blendMode="0" fontWeight="50" fontStrikeout="0" previewBkgrdColor="255,255,255,255" fontLetterSpacing="0" textOpacity="1" multilineHeight="1" textColor="255,255,255,255">
            <text-buffer bufferSizeUnits="MM" bufferNoFill="1" bufferBlendMode="0" bufferDraw="0" bufferColor="255,1,1,255" bufferOpacity="1" bufferJoinStyle="128" bufferSize="1" bufferSizeMapUnitScale="3x:0,0,0,0,0,0"/>
            <text-mask maskedSymbolLayers="" maskJoinStyle="128" maskType="0" maskSizeUnits="MM" maskOpacity="1" maskSize="1.5" maskSizeMapUnitScale="3x:0,0,0,0,0,0" maskEnabled="0"/>
            <background shapeOpacity="1" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0" shapeType="0" shapeSizeUnit="MM" shapeRotationType="0" shapeRotation="0" shapeSizeMapUnitScale="3x:0,0,0,0,0,0" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0" shapeBorderColor="128,128,128,255" shapeRadiiUnit="MM" shapeBorderWidthUnit="MM" shapeOffsetUnit="MM" shapeRadiiX="0" shapeBlendMode="0" shapeOffsetX="0" shapeSizeType="0" shapeSizeY="1" shapeOffsetY="0" shapeJoinStyle="64" shapeRadiiY="0" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0" shapeBorderWidth="0" shapeDraw="1" shapeSVGFile="" shapeFillColor="255,1,1,255" shapeSizeX="1">
              <symbol clip_to_extent="1" type="marker" name="markerSymbol" force_rhr="0" alpha="1">
                <layer enabled="1" pass="0" locked="0" class="SimpleMarker">
                  <prop k="angle" v="0"/>
                  <prop k="color" v="152,125,183,255"/>
                  <prop k="horizontal_anchor_point" v="1"/>
                  <prop k="joinstyle" v="bevel"/>
                  <prop k="name" v="circle"/>
                  <prop k="offset" v="0,0"/>
                  <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="offset_unit" v="MM"/>
                  <prop k="outline_color" v="35,35,35,255"/>
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
                      <Option value="" type="QString" name="name"/>
                      <Option name="properties"/>
                      <Option value="collection" type="QString" name="type"/>
                    </Option>
                  </data_defined_properties>
                </layer>
              </symbol>
            </background>
            <shadow shadowOffsetGlobal="1" shadowScale="100" shadowOffsetDist="1" shadowRadiusAlphaOnly="0" shadowDraw="0" shadowRadiusMapUnitScale="3x:0,0,0,0,0,0" shadowUnder="0" shadowBlendMode="6" shadowOffsetUnit="MM" shadowOpacity="0.7" shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowOffsetAngle="135" shadowRadius="1.5" shadowRadiusUnit="MM" shadowColor="0,0,0,255"/>
            <dd_properties>
              <Option type="Map">
                <Option value="" type="QString" name="name"/>
                <Option name="properties"/>
                <Option value="collection" type="QString" name="type"/>
              </Option>
            </dd_properties>
            <substitutions/>
          </text-style>
          <text-format decimals="3" autoWrapLength="0" multilineAlign="3" addDirectionSymbol="0" rightDirectionSymbol=">" formatNumbers="0" leftDirectionSymbol="&lt;" wrapChar="" placeDirectionSymbol="0" plussign="0" useMaxLineLengthForAutoWrap="1" reverseDirectionSymbol="0"/>
          <placement preserveRotation="1" yOffset="1" maxCurvedCharAngleOut="-25" overrunDistance="0" distUnits="MM" dist="2" geometryGeneratorType="PointGeometry" offsetUnits="MM" centroidInside="1" xOffset="-2" maxCurvedCharAngleIn="25" fitInPolygonOnly="0" placementFlags="10" placement="1" distMapUnitScale="3x:0,0,0,0,0,0" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" geometryGenerator="" repeatDistance="0" offsetType="0" polygonPlacementFlags="3" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" quadOffset="4" repeatDistanceUnits="MM" geometryGeneratorEnabled="0" centroidWhole="1" rotationAngle="0" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" overrunDistanceUnit="MM" layerType="PolygonGeometry" overrunDistanceMapUnitScale="3x:0,0,0,0,0,0" priority="5"/>
          <rendering drawLabels="1" scaleVisibility="0" fontLimitPixelSize="0" obstacle="1" mergeLines="0" obstacleFactor="1" labelPerPart="0" scaleMax="0" fontMinPixelSize="3" minFeatureSize="0" scaleMin="0" maxNumLabels="2000" upsidedownLabels="0" limitNumLabels="0" obstacleType="1" displayAll="0" fontMaxPixelSize="10000" zIndex="0"/>
          <dd_properties>
            <Option type="Map">
              <Option value="" type="QString" name="name"/>
              <Option name="properties"/>
              <Option value="collection" type="QString" name="type"/>
            </Option>
          </dd_properties>
          <callout type="simple">
            <Option type="Map">
              <Option value="pole_of_inaccessibility" type="QString" name="anchorPoint"/>
              <Option type="Map" name="ddProperties">
                <Option value="" type="QString" name="name"/>
                <Option name="properties"/>
                <Option value="collection" type="QString" name="type"/>
              </Option>
              <Option value="false" type="bool" name="drawToAllParts"/>
              <Option value="0" type="QString" name="enabled"/>
              <Option value="point_on_exterior" type="QString" name="labelAnchorPoint"/>
              <Option value="&lt;symbol clip_to_extent=&quot;1&quot; type=&quot;line&quot; name=&quot;symbol&quot; force_rhr=&quot;0&quot; alpha=&quot;1&quot;>&lt;layer enabled=&quot;1&quot; pass=&quot;0&quot; locked=&quot;0&quot; class=&quot;SimpleLine&quot;>&lt;prop k=&quot;capstyle&quot; v=&quot;square&quot;/>&lt;prop k=&quot;customdash&quot; v=&quot;5;2&quot;/>&lt;prop k=&quot;customdash_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;customdash_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;draw_inside_polygon&quot; v=&quot;0&quot;/>&lt;prop k=&quot;joinstyle&quot; v=&quot;bevel&quot;/>&lt;prop k=&quot;line_color&quot; v=&quot;60,60,60,255&quot;/>&lt;prop k=&quot;line_style&quot; v=&quot;solid&quot;/>&lt;prop k=&quot;line_width&quot; v=&quot;0.3&quot;/>&lt;prop k=&quot;line_width_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;offset&quot; v=&quot;0&quot;/>&lt;prop k=&quot;offset_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;offset_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;ring_filter&quot; v=&quot;0&quot;/>&lt;prop k=&quot;use_custom_dash&quot; v=&quot;0&quot;/>&lt;prop k=&quot;width_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;&quot; type=&quot;QString&quot; name=&quot;name&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option value=&quot;collection&quot; type=&quot;QString&quot; name=&quot;type&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;/layer>&lt;/symbol>" type="QString" name="lineSymbol"/>
              <Option value="0" type="double" name="minLength"/>
              <Option value="3x:0,0,0,0,0,0" type="QString" name="minLengthMapUnitScale"/>
              <Option value="MM" type="QString" name="minLengthUnit"/>
              <Option value="0" type="double" name="offsetFromAnchor"/>
              <Option value="3x:0,0,0,0,0,0" type="QString" name="offsetFromAnchorMapUnitScale"/>
              <Option value="MM" type="QString" name="offsetFromAnchorUnit"/>
              <Option value="0" type="double" name="offsetFromLabel"/>
              <Option value="3x:0,0,0,0,0,0" type="QString" name="offsetFromLabelMapUnitScale"/>
              <Option value="MM" type="QString" name="offsetFromLabelUnit"/>
            </Option>
          </callout>
        </settings>
      </rule>
      <rule key="{ba0d6c06-ddd8-42dd-95bc-6fa07606b5e4}" filter="ELSE" description="Avec valeurs">
        <settings calloutType="simple">
          <text-style fontSizeUnit="Point" textOrientation="horizontal" allowHtml="0" fontItalic="0" fontUnderline="0" fontFamily="MS Shell Dlg 2" fontCapitals="0" fontKerning="1" fontSize="10" fontSizeMapUnitScale="3x:0,0,0,0,0,0" fontWordSpacing="0" isExpression="1" useSubstitutions="0" namedStyle="Normal" fieldName="'NA '+ to_string(round(to_real(&quot;NA&quot;),1)) +', NB ' + to_string(round(to_real(&quot;NB&quot;),1))" blendMode="0" fontWeight="50" fontStrikeout="0" previewBkgrdColor="255,255,255,255" fontLetterSpacing="0" textOpacity="1" multilineHeight="1" textColor="255,127,0,255">
            <text-buffer bufferSizeUnits="MM" bufferNoFill="1" bufferBlendMode="0" bufferDraw="0" bufferColor="255,255,255,255" bufferOpacity="1" bufferJoinStyle="128" bufferSize="1" bufferSizeMapUnitScale="3x:0,0,0,0,0,0"/>
            <text-mask maskedSymbolLayers="" maskJoinStyle="128" maskType="0" maskSizeUnits="MM" maskOpacity="1" maskSize="1.5" maskSizeMapUnitScale="3x:0,0,0,0,0,0" maskEnabled="0"/>
            <background shapeOpacity="1" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0" shapeType="0" shapeSizeUnit="MM" shapeRotationType="0" shapeRotation="0" shapeSizeMapUnitScale="3x:0,0,0,0,0,0" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0" shapeBorderColor="128,128,128,255" shapeRadiiUnit="MM" shapeBorderWidthUnit="MM" shapeOffsetUnit="MM" shapeRadiiX="0" shapeBlendMode="0" shapeOffsetX="0" shapeSizeType="0" shapeSizeY="0" shapeOffsetY="0" shapeJoinStyle="64" shapeRadiiY="0" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0" shapeBorderWidth="0" shapeDraw="0" shapeSVGFile="" shapeFillColor="255,255,255,255" shapeSizeX="0">
              <symbol clip_to_extent="1" type="marker" name="markerSymbol" force_rhr="0" alpha="1">
                <layer enabled="1" pass="0" locked="0" class="SimpleMarker">
                  <prop k="angle" v="0"/>
                  <prop k="color" v="114,155,111,255"/>
                  <prop k="horizontal_anchor_point" v="1"/>
                  <prop k="joinstyle" v="bevel"/>
                  <prop k="name" v="circle"/>
                  <prop k="offset" v="0,0"/>
                  <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="offset_unit" v="MM"/>
                  <prop k="outline_color" v="35,35,35,255"/>
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
                      <Option value="" type="QString" name="name"/>
                      <Option name="properties"/>
                      <Option value="collection" type="QString" name="type"/>
                    </Option>
                  </data_defined_properties>
                </layer>
              </symbol>
            </background>
            <shadow shadowOffsetGlobal="1" shadowScale="100" shadowOffsetDist="1" shadowRadiusAlphaOnly="0" shadowDraw="0" shadowRadiusMapUnitScale="3x:0,0,0,0,0,0" shadowUnder="0" shadowBlendMode="6" shadowOffsetUnit="MM" shadowOpacity="0.7" shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowOffsetAngle="135" shadowRadius="1.5" shadowRadiusUnit="MM" shadowColor="0,0,0,255"/>
            <dd_properties>
              <Option type="Map">
                <Option value="" type="QString" name="name"/>
                <Option name="properties"/>
                <Option value="collection" type="QString" name="type"/>
              </Option>
            </dd_properties>
            <substitutions/>
          </text-style>
          <text-format decimals="3" autoWrapLength="0" multilineAlign="3" addDirectionSymbol="0" rightDirectionSymbol=">" formatNumbers="0" leftDirectionSymbol="&lt;" wrapChar="" placeDirectionSymbol="0" plussign="0" useMaxLineLengthForAutoWrap="1" reverseDirectionSymbol="0"/>
          <placement preserveRotation="1" yOffset="0" maxCurvedCharAngleOut="-25" overrunDistance="0" distUnits="MM" dist="0" geometryGeneratorType="PointGeometry" offsetUnits="MM" centroidInside="0" xOffset="0" maxCurvedCharAngleIn="25" fitInPolygonOnly="0" placementFlags="7" placement="7" distMapUnitScale="3x:0,0,0,0,0,0" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" geometryGenerator="" repeatDistance="0" offsetType="0" polygonPlacementFlags="2" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" quadOffset="4" repeatDistanceUnits="MM" geometryGeneratorEnabled="0" centroidWhole="0" rotationAngle="0" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" overrunDistanceUnit="MM" layerType="PolygonGeometry" overrunDistanceMapUnitScale="3x:0,0,0,0,0,0" priority="5"/>
          <rendering drawLabels="1" scaleVisibility="0" fontLimitPixelSize="0" obstacle="0" mergeLines="0" obstacleFactor="1" labelPerPart="0" scaleMax="0" fontMinPixelSize="3" minFeatureSize="0" scaleMin="0" maxNumLabels="2000" upsidedownLabels="0" limitNumLabels="0" obstacleType="1" displayAll="0" fontMaxPixelSize="10000" zIndex="0"/>
          <dd_properties>
            <Option type="Map">
              <Option value="" type="QString" name="name"/>
              <Option name="properties"/>
              <Option value="collection" type="QString" name="type"/>
            </Option>
          </dd_properties>
          <callout type="simple">
            <Option type="Map">
              <Option value="pole_of_inaccessibility" type="QString" name="anchorPoint"/>
              <Option type="Map" name="ddProperties">
                <Option value="" type="QString" name="name"/>
                <Option name="properties"/>
                <Option value="collection" type="QString" name="type"/>
              </Option>
              <Option value="false" type="bool" name="drawToAllParts"/>
              <Option value="0" type="QString" name="enabled"/>
              <Option value="point_on_exterior" type="QString" name="labelAnchorPoint"/>
              <Option value="&lt;symbol clip_to_extent=&quot;1&quot; type=&quot;line&quot; name=&quot;symbol&quot; force_rhr=&quot;0&quot; alpha=&quot;1&quot;>&lt;layer enabled=&quot;1&quot; pass=&quot;0&quot; locked=&quot;0&quot; class=&quot;SimpleLine&quot;>&lt;prop k=&quot;capstyle&quot; v=&quot;square&quot;/>&lt;prop k=&quot;customdash&quot; v=&quot;5;2&quot;/>&lt;prop k=&quot;customdash_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;customdash_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;draw_inside_polygon&quot; v=&quot;0&quot;/>&lt;prop k=&quot;joinstyle&quot; v=&quot;bevel&quot;/>&lt;prop k=&quot;line_color&quot; v=&quot;60,60,60,255&quot;/>&lt;prop k=&quot;line_style&quot; v=&quot;solid&quot;/>&lt;prop k=&quot;line_width&quot; v=&quot;0.3&quot;/>&lt;prop k=&quot;line_width_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;offset&quot; v=&quot;0&quot;/>&lt;prop k=&quot;offset_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;offset_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;ring_filter&quot; v=&quot;0&quot;/>&lt;prop k=&quot;use_custom_dash&quot; v=&quot;0&quot;/>&lt;prop k=&quot;width_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;&quot; type=&quot;QString&quot; name=&quot;name&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option value=&quot;collection&quot; type=&quot;QString&quot; name=&quot;type&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;/layer>&lt;/symbol>" type="QString" name="lineSymbol"/>
              <Option value="0" type="double" name="minLength"/>
              <Option value="3x:0,0,0,0,0,0" type="QString" name="minLengthMapUnitScale"/>
              <Option value="MM" type="QString" name="minLengthUnit"/>
              <Option value="0" type="double" name="offsetFromAnchor"/>
              <Option value="3x:0,0,0,0,0,0" type="QString" name="offsetFromAnchorMapUnitScale"/>
              <Option value="MM" type="QString" name="offsetFromAnchorUnit"/>
              <Option value="0" type="double" name="offsetFromLabel"/>
              <Option value="3x:0,0,0,0,0,0" type="QString" name="offsetFromLabelMapUnitScale"/>
              <Option value="MM" type="QString" name="offsetFromLabelUnit"/>
            </Option>
          </callout>
        </settings>
      </rule>
    </rules>
  </labeling>
  <customproperties>
    <property value="&quot;Nom&quot;" key="dualview/previewExpressions"/>
    <property value="0" key="embeddedWidgets/count"/>
    <property key="variableNames"/>
    <property key="variableValues"/>
  </customproperties>
  <blendMode>0</blendMode>
  <featureBlendMode>0</featureBlendMode>
  <layerOpacity>1</layerOpacity>
  <SingleCategoryDiagramRenderer attributeLegend="1" diagramType="Histogram">
    <DiagramCategory height="15" enabled="0" scaleDependency="Area" sizeType="MM" spacing="5" diagramOrientation="Up" lineSizeType="MM" maxScaleDenominator="1e+08" backgroundAlpha="255" backgroundColor="#ffffff" spacingUnitScale="3x:0,0,0,0,0,0" labelPlacementMethod="XHeight" direction="0" lineSizeScale="3x:0,0,0,0,0,0" penAlpha="255" spacingUnit="MM" sizeScale="3x:0,0,0,0,0,0" showAxis="1" penWidth="0" rotationOffset="270" minScaleDenominator="0" penColor="#000000" width="15" opacity="1" barWidth="5" minimumSize="0" scaleBasedVisibility="0">
      <fontProperties style="" description="MS Shell Dlg 2,8.25,-1,5,50,0,0,0,0,0"/>
      <attribute field="" color="#000000" label=""/>
      <axisSymbol>
        <symbol clip_to_extent="1" type="line" name="" force_rhr="0" alpha="1">
          <layer enabled="1" pass="0" locked="0" class="SimpleLine">
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
                <Option value="" type="QString" name="name"/>
                <Option name="properties"/>
                <Option value="collection" type="QString" name="type"/>
              </Option>
            </data_defined_properties>
          </layer>
        </symbol>
      </axisSymbol>
    </DiagramCategory>
  </SingleCategoryDiagramRenderer>
  <DiagramLayerSettings linePlacementFlags="18" placement="1" obstacle="0" showAll="1" dist="0" zIndex="0" priority="0">
    <properties>
      <Option type="Map">
        <Option value="" type="QString" name="name"/>
        <Option name="properties"/>
        <Option value="collection" type="QString" name="type"/>
      </Option>
    </properties>
  </DiagramLayerSettings>
  <geometryOptions removeDuplicateNodes="0" geometryPrecision="0">
    <activeChecks/>
    <checkConfiguration type="Map">
      <Option type="Map" name="QgsGeometryGapCheck">
        <Option value="0" type="double" name="allowedGapsBuffer"/>
        <Option value="false" type="bool" name="allowedGapsEnabled"/>
        <Option value="" type="QString" name="allowedGapsLayer"/>
      </Option>
    </checkConfiguration>
  </geometryOptions>
  <referencedLayers/>
  <referencingLayers/>
  <fieldConfiguration>
    <field name="Nom">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="Type">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="NA">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="NB">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="Gis N">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="NH">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="nrA">
      <editWidget type="Range">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="nrB">
      <editWidget type="Range">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="nrH">
      <editWidget type="Range">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="DY">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="DX">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="DH">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="EMA">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="EMB">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="Gis EM">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="EMH">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="Est">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="Nord">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
  </fieldConfiguration>
  <aliases>
    <alias field="Nom" index="0" name=""/>
    <alias field="Type" index="1" name=""/>
    <alias field="NA" index="2" name=""/>
    <alias field="NB" index="3" name=""/>
    <alias field="Gis N" index="4" name=""/>
    <alias field="NH" index="5" name=""/>
    <alias field="nrA" index="6" name=""/>
    <alias field="nrB" index="7" name=""/>
    <alias field="nrH" index="8" name=""/>
    <alias field="DY" index="9" name=""/>
    <alias field="DX" index="10" name=""/>
    <alias field="DH" index="11" name=""/>
    <alias field="EMA" index="12" name=""/>
    <alias field="EMB" index="13" name=""/>
    <alias field="Gis EM" index="14" name=""/>
    <alias field="EMH" index="15" name=""/>
    <alias field="Est" index="16" name=""/>
    <alias field="Nord" index="17" name=""/>
  </aliases>
  <excludeAttributesWMS/>
  <excludeAttributesWFS/>
  <defaults>
    <default field="Nom" expression="" applyOnUpdate="0"/>
    <default field="Type" expression="" applyOnUpdate="0"/>
    <default field="NA" expression="" applyOnUpdate="0"/>
    <default field="NB" expression="" applyOnUpdate="0"/>
    <default field="Gis N" expression="" applyOnUpdate="0"/>
    <default field="NH" expression="" applyOnUpdate="0"/>
    <default field="nrA" expression="" applyOnUpdate="0"/>
    <default field="nrB" expression="" applyOnUpdate="0"/>
    <default field="nrH" expression="" applyOnUpdate="0"/>
    <default field="DY" expression="" applyOnUpdate="0"/>
    <default field="DX" expression="" applyOnUpdate="0"/>
    <default field="DH" expression="" applyOnUpdate="0"/>
    <default field="EMA" expression="" applyOnUpdate="0"/>
    <default field="EMB" expression="" applyOnUpdate="0"/>
    <default field="Gis EM" expression="" applyOnUpdate="0"/>
    <default field="EMH" expression="" applyOnUpdate="0"/>
    <default field="Est" expression="" applyOnUpdate="0"/>
    <default field="Nord" expression="" applyOnUpdate="0"/>
  </defaults>
  <constraints>
    <constraint field="Nom" unique_strength="0" constraints="0" notnull_strength="0" exp_strength="0"/>
    <constraint field="Type" unique_strength="0" constraints="0" notnull_strength="0" exp_strength="0"/>
    <constraint field="NA" unique_strength="0" constraints="0" notnull_strength="0" exp_strength="0"/>
    <constraint field="NB" unique_strength="0" constraints="0" notnull_strength="0" exp_strength="0"/>
    <constraint field="Gis N" unique_strength="0" constraints="0" notnull_strength="0" exp_strength="0"/>
    <constraint field="NH" unique_strength="0" constraints="0" notnull_strength="0" exp_strength="0"/>
    <constraint field="nrA" unique_strength="0" constraints="0" notnull_strength="0" exp_strength="0"/>
    <constraint field="nrB" unique_strength="0" constraints="0" notnull_strength="0" exp_strength="0"/>
    <constraint field="nrH" unique_strength="0" constraints="0" notnull_strength="0" exp_strength="0"/>
    <constraint field="DY" unique_strength="0" constraints="0" notnull_strength="0" exp_strength="0"/>
    <constraint field="DX" unique_strength="0" constraints="0" notnull_strength="0" exp_strength="0"/>
    <constraint field="DH" unique_strength="0" constraints="0" notnull_strength="0" exp_strength="0"/>
    <constraint field="EMA" unique_strength="0" constraints="0" notnull_strength="0" exp_strength="0"/>
    <constraint field="EMB" unique_strength="0" constraints="0" notnull_strength="0" exp_strength="0"/>
    <constraint field="Gis EM" unique_strength="0" constraints="0" notnull_strength="0" exp_strength="0"/>
    <constraint field="EMH" unique_strength="0" constraints="0" notnull_strength="0" exp_strength="0"/>
    <constraint field="Est" unique_strength="0" constraints="0" notnull_strength="0" exp_strength="0"/>
    <constraint field="Nord" unique_strength="0" constraints="0" notnull_strength="0" exp_strength="0"/>
  </constraints>
  <constraintExpressions>
    <constraint field="Nom" desc="" exp=""/>
    <constraint field="Type" desc="" exp=""/>
    <constraint field="NA" desc="" exp=""/>
    <constraint field="NB" desc="" exp=""/>
    <constraint field="Gis N" desc="" exp=""/>
    <constraint field="NH" desc="" exp=""/>
    <constraint field="nrA" desc="" exp=""/>
    <constraint field="nrB" desc="" exp=""/>
    <constraint field="nrH" desc="" exp=""/>
    <constraint field="DY" desc="" exp=""/>
    <constraint field="DX" desc="" exp=""/>
    <constraint field="DH" desc="" exp=""/>
    <constraint field="EMA" desc="" exp=""/>
    <constraint field="EMB" desc="" exp=""/>
    <constraint field="Gis EM" desc="" exp=""/>
    <constraint field="EMH" desc="" exp=""/>
    <constraint field="Est" desc="" exp=""/>
    <constraint field="Nord" desc="" exp=""/>
  </constraintExpressions>
  <expressionfields/>
  <attributeactions>
    <defaultAction value="{00000000-0000-0000-0000-000000000000}" key="Canvas"/>
  </attributeactions>
  <attributetableconfig actionWidgetStyle="dropDown" sortExpression="" sortOrder="0">
    <columns>
      <column type="field" name="Nom" hidden="0" width="-1"/>
      <column type="field" name="Type" hidden="0" width="-1"/>
      <column type="field" name="NA" hidden="0" width="-1"/>
      <column type="field" name="NB" hidden="0" width="-1"/>
      <column type="field" name="Gis N" hidden="0" width="-1"/>
      <column type="field" name="NH" hidden="0" width="-1"/>
      <column type="field" name="nrA" hidden="0" width="-1"/>
      <column type="field" name="nrB" hidden="0" width="-1"/>
      <column type="field" name="nrH" hidden="0" width="-1"/>
      <column type="field" name="DY" hidden="0" width="-1"/>
      <column type="field" name="DX" hidden="0" width="-1"/>
      <column type="field" name="DH" hidden="0" width="-1"/>
      <column type="field" name="EMA" hidden="0" width="-1"/>
      <column type="field" name="EMB" hidden="0" width="-1"/>
      <column type="field" name="Gis EM" hidden="0" width="-1"/>
      <column type="field" name="EMH" hidden="0" width="-1"/>
      <column type="field" name="Est" hidden="0" width="-1"/>
      <column type="field" name="Nord" hidden="0" width="-1"/>
      <column type="actions" hidden="1" width="-1"/>
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
    <field name="DH" editable="1"/>
    <field name="DX" editable="1"/>
    <field name="DY" editable="1"/>
    <field name="EMA" editable="1"/>
    <field name="EMB" editable="1"/>
    <field name="EMH" editable="1"/>
    <field name="Est" editable="1"/>
    <field name="Gis EM" editable="1"/>
    <field name="Gis N" editable="1"/>
    <field name="NA" editable="1"/>
    <field name="NB" editable="1"/>
    <field name="NH" editable="1"/>
    <field name="Nom" editable="1"/>
    <field name="Nord" editable="1"/>
    <field name="Type" editable="1"/>
    <field name="nrA" editable="1"/>
    <field name="nrB" editable="1"/>
    <field name="nrH" editable="1"/>
  </editable>
  <labelOnTop>
    <field labelOnTop="0" name="DH"/>
    <field labelOnTop="0" name="DX"/>
    <field labelOnTop="0" name="DY"/>
    <field labelOnTop="0" name="EMA"/>
    <field labelOnTop="0" name="EMB"/>
    <field labelOnTop="0" name="EMH"/>
    <field labelOnTop="0" name="Est"/>
    <field labelOnTop="0" name="Gis EM"/>
    <field labelOnTop="0" name="Gis N"/>
    <field labelOnTop="0" name="NA"/>
    <field labelOnTop="0" name="NB"/>
    <field labelOnTop="0" name="NH"/>
    <field labelOnTop="0" name="Nom"/>
    <field labelOnTop="0" name="Nord"/>
    <field labelOnTop="0" name="Type"/>
    <field labelOnTop="0" name="nrA"/>
    <field labelOnTop="0" name="nrB"/>
    <field labelOnTop="0" name="nrH"/>
  </labelOnTop>
  <dataDefinedFieldProperties/>
  <widgets/>
  <previewExpression>"Nom"</previewExpression>
  <mapTip></mapTip>
  <layerGeometryType>2</layerGeometryType>
</qgis>
