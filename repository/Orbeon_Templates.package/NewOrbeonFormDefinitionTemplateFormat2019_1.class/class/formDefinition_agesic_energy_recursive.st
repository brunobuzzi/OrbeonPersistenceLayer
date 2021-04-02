energy recursive form
formDefinition_agesic_energy_recursive

	^'<xh:html xmlns:xh="http://www.w3.org/1999/xhtml" xmlns:xf="http://www.w3.org/2002/xforms"
         xmlns:xs="http://www.w3.org/2001/XMLSchema"
         xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
         xmlns:ev="http://www.w3.org/2001/xml-events"
         xmlns:xi="http://www.w3.org/2001/XInclude"
         xmlns:xxi="http://orbeon.org/oxf/xml/xinclude"
         xmlns:xxf="http://orbeon.org/oxf/xml/xforms"
         xmlns:exf="http://www.exforms.org/exf/1-0"
         xmlns:fr="http://orbeon.org/oxf/xml/form-runner"
         xmlns:saxon="http://saxon.sf.net/"
         xmlns:sql="http://orbeon.org/oxf/xml/sql"
         xmlns:soap="http://schemas.xmlsoap.org/soap/envelope/"
         xmlns:fb="http://orbeon.org/oxf/xml/form-builder"
         fr:data-format-version="2019.1.0">
   <xh:head>
        <xh:meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <xh:title>Energy Recursive Form</xh:title>
        <xf:model id="fr-form-model" xxf:expose-xpath-types="true">
            <xf:instance id="fr-form-instance" xxf:exclude-result-prefixes="#all" xxf:index="id">
                <form>
                    <Datos-generales>
                        <grid-1>
                            <nombre/>
                            <rut/>
                        </grid-1>
                        <grid-2>
                            <ciiu2/>
                            <control-52/>
                        </grid-2>
                        <grid-3>
                            <pyme/>
                            <empleados/>
                            <ventasAnuales/>
                            <certificado_pyme filename="" mediatype="" size=""/>
                        </grid-3>
                    </Datos-generales>
                    <section-41>
                        <grid-4>
                            <nombreDirectivo/>
                            <cargoDirectivo/>
                            <direccionDirectivo/>
                            <telefonoDirectivo/>
                            <emailDirectivo/>
                        </grid-4>
                    </section-41>
                    <section-53>
                        <section-53-iteration>
                            <grid-5>
                                <nombreCertificador/>
                                <cargoCertificador/>
                            </grid-5>
                            <grid-43>
                                <grid-43-iteration>
                                    <control-45/>
                                    <control-46/>
                                </grid-43-iteration>
                            </grid-43>
                            <section-47>
                                <section-47-iteration>
                                    <grid-6>
                                        <universidad/>
                                    </grid-6>
                                    <grid-50>
                                        <grid-50-iteration>
                                            <curso/>
                                        </grid-50-iteration>
                                    </grid-50>
                                </section-47-iteration>
                            </section-47>
                        </section-53-iteration>
                    </section-53>
                    <section-81>
                        <section-81-iteration>
                            <grid-7>
                                <denominacionLocal/>
                                <direccion/>
                            </grid-7>
                            <grid-8>
                                <ciudad/>
                                <dpto/>
                                <tipoConsumidor/>
                                <consumoEnergiaElectrica/>
                            </grid-8>
                            <grid-9>
                                <combustible>16 15 14 13</combustible>
                                <aserrin/>
                                <bagazo/>
                                <biodiesel/>
                                <bioetanol/>
                                <carbon_mineral/>
                            </grid-9>
                            <grid-10>
                                <control-72/>
                            </grid-10>
                            <grid-83>
                                <grid-83-iteration>
                                    <nombreMedida/>
                                    <usoPrincipal/>
                                    <energetico_evitado/>
                                </grid-83-iteration>
                            </grid-83>
                        </section-81-iteration>
                    </section-81>
                </form>
            </xf:instance>
            <xf:bind id="fr-form-binds" ref="instance(''fr-form-instance'')">
                <xf:bind id="Datos-generales-bind" name="Datos-generales" ref="Datos-generales">
                    <xf:bind id="grid-3-bind" ref="grid-3" name="grid-3">
                        <xf:bind id="pyme-bind" ref="pyme" name="pyme" required="true()"/>
                        <xf:bind id="empleados-bind" ref="empleados" name="empleados"
                                 relevant="contains($pyme,''1'')"
                                 required="true()"/>
                        <xf:bind id="ventasAnuales-bind" ref="ventasAnuales" name="ventasAnuales"
                                 relevant="contains($pyme,''1'')"
                                 required="true()"/>
                        <xf:bind id="certificado_pyme-bind" ref="certificado_pyme" name="certificado_pyme"
                                 type="xs:anyURI"
                                 relevant="contains($pyme,''1'')"
                                 required="true()"/>
                    </xf:bind>
                    <xf:bind id="grid-2-bind" ref="grid-2" name="grid-2">
                        <xf:bind id="ciiu2-bind" ref="ciiu2" name="ciiu2" required="true()"/>
                        <xf:bind id="control-52-bind" ref="control-52" name="control-52"/>
                    </xf:bind>
                    <xf:bind id="grid-1-bind" ref="grid-1" name="grid-1">
                        <xf:bind id="nombre-bind" name="nombre" ref="nombre" required="true()"/>
                        <xf:bind id="rut-bind" ref="rut" name="rut" required="true()" type="xs:integer"/>
                    </xf:bind>
                </xf:bind>
                <xf:bind id="section-41-bind" ref="section-41" name="section-41">
                    <xf:bind id="grid-4-bind" ref="grid-4" name="grid-4">
                        <xf:bind id="nombreDirectivo-bind" ref="nombreDirectivo" name="nombreDirectivo"
                                 required="true()"/>
                        <xf:bind id="cargoDirectivo-bind" ref="cargoDirectivo" name="cargoDirectivo"
                                 required="true()"/>
                        <xf:bind id="direccionDirectivo-bind" ref="direccionDirectivo" name="direccionDirectivo"
                                 required="true()"/>
                        <xf:bind id="telefonoDirectivo-bind" ref="telefonoDirectivo" name="telefonoDirectivo"
                                 required="true()"
                                 type="xs:integer"/>
                        <xf:bind id="emailDirectivo-bind" ref="emailDirectivo" name="emailDirectivo"
                                 type="xf:email"
                                 required="true()"/>
                    </xf:bind>
                </xf:bind>
                <xf:bind id="section-53-bind" ref="section-53" name="section-53">
                    <xf:bind id="section-53-iteration-bind" ref="section-53-iteration"
                             name="section-53-iteration">
                        <xf:bind id="grid-5-bind" ref="grid-5" name="grid-5">
                            <xf:bind id="nombreCertificador-bind" ref="nombreCertificador" name="nombreCertificador"
                                     required="true()"/>
                            <xf:bind id="cargoCertificador-bind" ref="cargoCertificador" name="cargoCertificador"
                                     required="true()"/>
                        </xf:bind>
                        <xf:bind id="grid-43-bind" ref="grid-43" name="grid-43">
                            <xf:bind id="grid-43-iteration-bind" ref="grid-43-iteration" name="grid-43-iteration">
                                <xf:bind id="control-45-bind" ref="control-45" name="control-45"/>
                                <xf:bind id="control-46-bind" ref="control-46" name="control-46"
                                         type="xf:positiveInteger"/>
                            </xf:bind>
                        </xf:bind>
                        <xf:bind id="section-47-bind" ref="section-47" name="section-47">
                            <xf:bind id="section-47-iteration-bind" ref="section-47-iteration"
                                     name="section-47-iteration">
                                <xf:bind id="grid-6-bind" ref="grid-6" name="grid-6">
                                    <xf:bind id="universidad-bind" ref="universidad" name="universidad"/>
                                </xf:bind>
                                <xf:bind id="grid-50-bind" ref="grid-50" name="grid-50">
                                    <xf:bind id="grid-50-iteration-bind" ref="grid-50-iteration" name="grid-50-iteration">
                                        <xf:bind id="curso-bind" ref="curso" name="curso"/>
                                    </xf:bind>
                                </xf:bind>
                            </xf:bind>
                        </xf:bind>
                    </xf:bind>
                </xf:bind>
                <xf:bind id="section-81-bind" ref="section-81" name="section-81">
                    <xf:bind id="section-81-iteration-bind" ref="section-81-iteration"
                             name="section-81-iteration">
                        <xf:bind id="grid-10-bind" ref="grid-10" name="grid-10">
                            <xf:bind id="control-72-bind" ref="control-72" name="control-72"/>
                        </xf:bind>
                        <xf:bind id="grid-9-bind" ref="grid-9" name="grid-9">
                            <xf:bind id="combustible-bind" ref="combustible" name="combustible" required="true()"/>
                            <xf:bind id="aserrin-bind" ref="aserrin" name="aserrin" type="xs:decimal"
                                     relevant="contains($combustible,''01'')"
                                     required="true()"/>
                            <xf:bind id="bagazo-bind" ref="bagazo" name="bagazo" type="xs:decimal"
                                     relevant="contains($combustible,''02'')"
                                     required="true()"/>
                            <xf:bind id="biodiesel-bind" ref="biodiesel" name="biodiesel" type="xs:decimal"
                                     relevant="contains($combustible,''03'')"
                                     required="true()"/>
                            <xf:bind id="bioetanol-bind" ref="bioetanol" name="bioetanol" type="xs:decimal"
                                     relevant="contains($combustible,''04'')"
                                     required="true()"/>
                            <xf:bind id="carbon_mineral-bind" ref="carbon_mineral" name="carbon_mineral"
                                     type="xs:decimal"
                                     relevant="contains($combustible,''05'')"
                                     required="true()"/>
                        </xf:bind>
                        <xf:bind id="grid-8-bind" ref="grid-8" name="grid-8">
                            <xf:bind id="ciudad-bind" ref="ciudad" name="ciudad"/>
                            <xf:bind id="dpto-bind" ref="dpto" name="dpto" required="true()"/>
                            <xf:bind id="tipoConsumidor-bind" ref="tipoConsumidor" name="tipoConsumidor"
                                     required="true()"/>
                            <xf:bind id="consumoEnergiaElectrica-bind" ref="consumoEnergiaElectrica"
                                     name="consumoEnergiaElectrica"
                                     required="true()"
                                     type="xs:integer"/>
                        </xf:bind>
                        <xf:bind id="grid-7-bind" ref="grid-7" name="grid-7">
                            <xf:bind id="denominacionLocal-bind" ref="denominacionLocal" name="denominacionLocal"
                                     required="true()"/>
                            <xf:bind id="direccion-bind" ref="direccion" name="direccion" required="true()"/>
                        </xf:bind>
                        <xf:bind id="grid-83-bind" ref="grid-83" name="grid-83">
                            <xf:bind id="grid-83-iteration-bind" ref="grid-83-iteration" name="grid-83-iteration">
                                <xf:bind id="nombreMedida-bind" ref="nombreMedida" name="nombreMedida" required="true()"/>
                                <xf:bind id="usoPrincipal-bind" ref="usoPrincipal" name="usoPrincipal" required="true()"/>
                                <xf:bind id="energetico_evitado-bind" ref="energetico_evitado" name="energetico_evitado"
                                         required="true()"/>
                            </xf:bind>
                        </xf:bind>
                    </xf:bind>
                </xf:bind>
            </xf:bind>
            <xf:instance xxf:readonly="true" id="fr-form-metadata" xxf:exclude-result-prefixes="#all">
                <metadata>
                    <application-name>agesic</application-name>
                    <updated-with-version>2020.1.1.202102012142 PE</updated-with-version>
                    <form-name>energy-recursive</form-name>
                    <title xml:lang="es">Energy Recursive Form</title>
                    <description xml:lang="es"/>
                    <singleton>false</singleton>
                    <available>false</available>
                </metadata>
            </xf:instance>
            <xf:instance id="fr-form-attachments" xxf:exclude-result-prefixes="#all">
                <attachments>
                    <css mediatype="text/css" filename="" size=""/>
                    <pdf mediatype="" filename="" size=""/>
                </attachments>
            </xf:instance>
            <xf:instance id="fr-form-resources" xxf:readonly="false" xxf:exclude-result-prefixes="#all">
                <resources>
                    <resource xml:lang="es">
                        <curso>
                            <label>Curso</label>
                            <hint/>
                        </curso>
                        <universidad>
                            <label>Universidad</label>
                            <hint/>
                        </universidad>
                        <control-45>
                            <label>Empresa de Cargo</label>
                            <hint/>
                        </control-45>
                        <control-46>
                            <label>Indice Calificador</label>
                            <hint/>
                        </control-46>
                        <section-47>
                            <label>Estudios</label>
                            <help/>
                        </section-47>
                        <nombreMedida>
                            <label>Nombre de la medida</label>
                            <hint/>
                        </nombreMedida>
                        <usoPrincipal>
                            <label>Uso principal</label>
                            <hint>Uso de energía en el cual incide la medida </hint>
                            <item>
                                <label>Bombeo de Agua</label>
                                <value>01</value>
                            </item>
                            <item>
                                <label>Calefacción de ambientes</label>
                                <value>02</value>
                            </item>
                            <item>
                                <label>Calentamiento de Agua</label>
                                <value>03</value>
                            </item>
                            <item>
                                <label>Calor directo</label>
                                <value>04</value>
                            </item>
                            <item>
                                <label>Cocción</label>
                                <value>05</value>
                            </item>
                            <item>
                                <label>Cogeneración</label>
                                <value>06</value>
                            </item>
                            <item>
                                <label>Conservación de alimentos</label>
                                <value>07</value>
                            </item>
                            <item>
                                <label>Frío de Proceso</label>
                                <value>08</value>
                            </item>
                            <item>
                                <label>Fuerza Motriz fija</label>
                                <value>09</value>
                            </item>
                            <item>
                                <label>Generación de Vapor</label>
                                <value>10</value>
                            </item>
                            <item>
                                <label>Iluminación</label>
                                <value>11</value>
                            </item>
                            <item>
                                <label>Otros artefactos a combustibles</label>
                                <value>12</value>
                            </item>
                            <item>
                                <label>Otros artefactos el éctricos</label>
                                <value>13</value>
                            </item>
                            <item>
                                <label>Transporte</label>
                                <value>14</value>
                            </item>
                            <item>
                                <label>Transporte interno</label>
                                <value>15</value>
                            </item>
                            <item>
                                <label>Ventilación y Refrigeración de Ambientes</label>
                                <value>16</value>
                            </item>
                        </usoPrincipal>
                        <energetico_evitado>
                            <label>Energético evitado</label>
                            <hint/>
                            <item>
                                <label>Aserrín</label>
                                <value>01</value>
                            </item>
                            <item>
                                <label>Bagazo</label>
                                <value>02</value>
                            </item>
                            <item>
                                <label>Biodiesel</label>
                                <value>03</value>
                            </item>
                            <item>
                                <label>Bioetanol</label>
                                <value>04</value>
                            </item>
                            <item>
                                <label>Carbón mineral</label>
                                <value>05</value>
                            </item>
                            <item>
                                <label>Carbón vegetal</label>
                                <value>06</value>
                            </item>
                            <item>
                                <label>Cáscara de arroz</label>
                                <value>07</value>
                            </item>
                            <item>
                                <label>Cáscara de girasol</label>
                                <value>08</value>
                            </item>
                            <item>
                                <label>Casullo de cebada</label>
                                <value>09</value>
                            </item>
                            <item>
                                <label>Chips</label>
                                <value>10</value>
                            </item>
                            <item>
                                <label>Diesel Oil</label>
                                <value>11</value>
                            </item>
                            <item>
                                <label>Energía el  éctrica de la red</label>
                                <value>12</value>
                            </item>
                            <item>
                                <label>Fuel Oil</label>
                                <value>13</value>
                            </item>
                            <item>
                                <label>Gas natural</label>
                                <value>14</value>
                            </item>
                            <item>
                                <label>Gas Oil</label>
                                <value>15</value>
                            </item>
                            <item>
                                <label>Gasolina</label>
                                <value>16</value>
                            </item>
                            <item>
                                <label>Gas propano</label>
                                <value>17</value>
                            </item>
                            <item>
                                <label>Leña</label>
                                <value>18</value>
                            </item>
                            <item>
                                <label>Licor negro</label>
                                <value>19</value>
                            </item>
                            <item>
                                <label>Residuos forestales</label>
                                <value>20</value>
                            </item>
                            <item>
                                <label>Supergás</label>
                                <value>21</value>
                            </item>
                        </energetico_evitado>
                        <combustible>
                            <label>Seleccione los combustibles que consume</label>
                            <hint/>
                            <item>
                                <label>Aserrín</label>
                                <value>01</value>
                            </item>
                            <item>
                                <label>Bagazo</label>
                                <value>02</value>
                            </item>
                            <item>
                                <label>Biodiesel</label>
                                <value>03</value>
                            </item>
                            <item>
                                <label>Bioetanol</label>
                                <value>04</value>
                            </item>
                            <item>
                                <label>Carbón mineral</label>
                                <value>05</value>
                            </item>
                        </combustible>
                        <aserrin>
                            <label>Indique el consumo de aserrín en el año anterior (ton)</label>
                            <hint/>
                        </aserrin>
                        <bagazo>
                            <label>Indique el consumo de bagazo en el año anterior (ton)</label>
                            <hint/>
                        </bagazo>
                        <biodiesel>
                            <label>Indique el consumo de biodiesel en el año anterior (m3)</label>
                            <hint/>
                        </biodiesel>
                        <bioetanol>
                            <label>Indique el consumo de bioetanol en el año anterior (m3)</label>
                            <hint/>
                        </bioetanol>
                        <carbon_mineral>
                            <label>Indique el consumo de carbón mineral en el año anterior (ton)</label>
                            <hint/>
                        </carbon_mineral>
                        <control-72>
                            <label>Por favor liste las medidas de eficiencia energética implementadas. Agregué la cantidad de filas que sean necesarias con el
                        botón (+).                                                                                                               
                     </label>
                            <hint/>
                        </control-72>
                        <denominacionLocal>
                            <label>Denominación del Local</label>
                            <hint/>
                        </denominacionLocal>
                        <direccion>
                            <label>Dirección de las instalaciones</label>
                            <hint/>
                        </direccion>
                        <ciudad>
                            <label>Ciudad</label>
                            <hint/>
                        </ciudad>
                        <dpto>
                            <label>Departamento</label>
                            <hint/>
                            <item>
                                <label>Artigas</label>
                                <value>artigas</value>
                            </item>
                            <item>
                                <label>Canelones</label>
                                <value>canelones</value>
                            </item>
                            <item>
                                <label>Cerro Largo</label>
                                <value>cerro-largo</value>
                            </item>
                            <item>
                                <label>Colonia</label>
                                <value>colonia</value>
                            </item>
                            <item>
                                <label>Durazno</label>
                                <value>durazno</value>
                            </item>
                            <item>
                                <label>Flores</label>
                                <value>flores</value>
                            </item>
                            <item>
                                <label>Florida</label>
                                <value>florida</value>
                            </item>
                            <item>
                                <label>Lavalleja</label>
                                <value>lavalleja</value>
                            </item>
                            <item>
                                <label>Maldonado</label>
                                <value>maldonado</value>
                            </item>
                            <item>
                                <label>Montevideo</label>
                                <value>montevideo</value>
                            </item>
                            <item>
                                <label>Paysandú</label>
                                <value>paysandú</value>
                            </item>
                            <item>
                                <label>Río Negro</label>
                                <value>río-negro</value>
                            </item>
                            <item>
                                <label>Rivera</label>
                                <value>rivera</value>
                            </item>
                            <item>
                                <label>Rocha</label>
                                <value>rocha</value>
                            </item>
                            <item>
                                <label>Salto</label>
                                <value>salto</value>
                            </item>
                            <item>
                                <label>San José</label>
                                <value>san-josé</value>
                            </item>
                            <item>
                                <label>Soriano</label>
                                <value>soriano</value>
                            </item>
                            <item>
                                <label>Tacuarembó</label>
                                <value>tacuarembó</value>
                            </item>
                            <item>
                                <label>Treinta y Tres</label>
                                <value>treinta-y-tres</value>
                            </item>
                        </dpto>
                        <tipoConsumidor>
                            <label>Tipo de consumidor de energía eléctrica</label>
                            <hint/>
                            <item>
                                <label>Tarifa Residencial Simple</label>
                                <value>tarifa-residencial-simple</value>
                            </item>
                            <item>
                                <label>Tarifa Doble Horario</label>
                                <value>tarifa-doble-horario</value>
                            </item>
                            <item>
                                <label>Tarifa General Simple</label>
                                <value>tarifa-general-simple</value>
                            </item>
                            <item>
                                <label>MC1</label>
                                <value>mc1</value>
                            </item>
                            <item>
                                <label>MC2</label>
                                <value>mc2</value>
                            </item>
                            <item>
                                <label>MC3</label>
                                <value>mc3</value>
                            </item>
                            <item>
                                <label>GC1</label>
                                <value>gc1</value>
                            </item>
                            <item>
                                <label>GC2</label>
                                <value>gc2</value>
                            </item>
                            <item>
                                <label>GC3</label>
                                <value>gc3</value>
                            </item>
                            <item>
                                <label>GC4</label>
                                <value>gc4</value>
                            </item>
                            <item>
                                <label>GC5</label>
                                <value>gc5</value>
                            </item>
                        </tipoConsumidor>
                        <consumoEnergiaElectrica>
                            <label>Consumo de energéa eléctrica (MWh/año) </label>
                            <hint>Indique su consumo de electricidad en el año anterior </hint>
                        </consumoEnergiaElectrica>
                        <section-81>
                            <label>D. DATOS DEL LOCAL</label>
                            <help/>
                        </section-81>
                        <nombreCertificador>
                            <label>Nombre</label>
                            <hint/>
                        </nombreCertificador>
                        <cargoCertificador>
                            <label>Cargo</label>
                            <hint/>
                        </cargoCertificador>
                        <nombreDirectivo>
                            <label>Nombre</label>
                            <hint/>
                        </nombreDirectivo>
                        <cargoDirectivo>
                            <label>Cargo</label>
                            <hint/>
                        </cargoDirectivo>
                        <direccionDirectivo>
                            <label>Dirección</label>
                            <hint/>
                        </direccionDirectivo>
                        <telefonoDirectivo>
                            <label>Teléfono</label>
                            <hint/>
                        </telefonoDirectivo>
                        <emailDirectivo>
                            <label>E-mail</label>
                            <hint/>
                        </emailDirectivo>
                        <Datos-generales>
                            <label>A. DATOS GENERALES</label>
                        </Datos-generales>
                        <nombre>
                            <label>Denominación</label>
                            <hint>Nombre de la empresa, institución o centro de trabajo</hint>
                        </nombre>
                        <rut>
                            <label>Número de RUT</label>
                            <hint/>
                        </rut>
                        <ciiu2>
                            <label>Sector de actividad (CIIU 2 dígitos)</label>
                            <hint>Seleccione la división que corresponda. Puede utilizar las notas explicativas adjuntas.</hint>
                            <item>
                                <label>A-01. Producción agropecuaria, caza y actividades de servicios conexas</label>
                                <value>01</value>
                            </item>
                            <item>
                                <label>A-02. Forestación y extracción de madera</label>
                                <value>02</value>
                            </item>
                            <item>
                                <label>A-03. Pesca y Acuicultura</label>
                                <value>03</value>
                            </item>
                            <item>
                                <label>B. Explotación de minas y canteras</label>
                                <value>04</value>
                            </item>
                            <item>
                                <label>C-10. Elaboración de productos alimenticios</label>
                                <value>05</value>
                            </item>
                            <item>
                                <label>C-11. Elaboración de bebidas</label>
                                <value>06</value>
                            </item>
                            <item>
                                <label>C-12. Elaboración de productos de tabaco</label>
                                <value>07</value>
                            </item>
                            <item>
                                <label>C-13. Fabricación de productos textiles</label>
                                <value>08</value>
                            </item>
                            <item>
                                <label>C-14. Fabricación de prendas de vestir</label>
                                <value>09</value>
                            </item>
                            <item>
                                <label>C-15. Fabricación de cueros y productos conexos</label>
                                <value>10</value>
                            </item>
                            <item>
                                <label>C-16. Producción de madera y fabricación de productos de madera y corcho, excepto muebles; fabricación de artículos de paja
                           y de materiales trenzables.
                        </label>
                                <value>11</value>
                            </item>
                            <item>
                                <label>C-17. Fabricación de papel y de los productos de papel</label>
                                <value>12</value>
                            </item>
                            <item>
                                <label>C-18. Actividades de impresión y reproducción de grabaciones</label>
                                <value>13</value>
                            </item>
                            <item>
                                <label>C-19. Fabricación de coque y de productos de la refinación del petróleo</label>
                                <value>14</value>
                            </item>
                            <item>
                                <label>C-20. Fabricación de sustancias y productos químicos</label>
                                <value>15</value>
                            </item>
                            <item>
                                <label>C-21. Fabricación de productos farmacéuticos, sustancias químicas medicinales y de productos botánicos.</label>
                                <value>16</value>
                            </item>
                            <item>
                                <label>C-22. Fabricación de productos de caucho y plástico</label>
                                <value>17</value>
                            </item>
                            <item>
                                <label>C-23. Fabricación de otros productos minerales no metálicos</label>
                                <value>18</value>
                            </item>
                            <item>
                                <label>C-24. Fabricación de metales comunes</label>
                                <value>19</value>
                            </item>
                            <item>
                                <label>C-25. Fabricación de productos derivados del metal, excepto maquinaria y equipo</label>
                                <value>20</value>
                            </item>
                            <item>
                                <label>C-26. Fabricación de los productos informáticos, electrónicos y ópticos</label>
                                <value>21</value>
                            </item>
                            <item>
                                <label>C-27. Fabricación de equipo el  éctrico</label>
                                <value>22</value>
                            </item>
                            <item>
                                <label>C-28. Fabricación de la maquinaria y equipo n.c.p.</label>
                                <value>23</value>
                            </item>
                            <item>
                                <label>C-29. Fabricación de vehículos automotores, remolques y semiremolques</label>
                                <value>24</value>
                            </item>
                            <item>
                                <label>C-30. Fabricación de otros tipos de equipo de transporte</label>
                                <value>25</value>
                            </item>
                            <item>
                                <label>C-31. Fabricación de muebles</label>
                                <value>26</value>
                            </item>
                            <item>
                                <label>C-32. Otras industrias manufactureras</label>
                                <value>27</value>
                            </item>
                            <item>
                                <label>C-33. Reparación e instalación de la maquinaria y equipo</label>
                                <value>28</value>
                            </item>
                            <item>
                                <label>D. Suministro de electricidad, gas, vapor y aire acondicionado</label>
                                <value>29</value>
                            </item>
                            <item>
                                <label>E. Suministro de agua; alcantarillado, gestión de desechos y actividades de saneamiento</label>
                                <value>30</value>
                            </item>
                            <item>
                                <label>F. Construcción</label>
                                <value>31</value>
                            </item>
                            <item>
                                <label>G. Comercio al por mayor y al por menor; reparación de los vehículos de motor y de las motocicletas.</label>
                                <value>32</value>
                            </item>
                            <item>
                                <label>H. Transporte y almacenamiento</label>
                                <value>33</value>
                            </item>
                            <item>
                                <label>I. Alojamiento y servicios de comida</label>
                                <value>34</value>
                            </item>
                            <item>
                                <label>J. Informítica y comunicación</label>
                                <value>35</value>
                            </item>
                            <item>
                                <label>K. Actividades financieras y de seguros</label>
                                <value>36</value>
                            </item>
                            <item>
                                <label>L. Actividades inmobiliarias</label>
                                <value>37</value>
                            </item>
                            <item>
                                <label>M. Actividades profesionales, científicas y técnicas</label>
                                <value>38</value>
                            </item>
                            <item>
                                <label>N. Actividades administrativas y servicios de apoyo</label>
                                <value>39</value>
                            </item>
                            <item>
                                <label>O. Administración pública y defensa; planes de seguridad social de afiliación obligatoria</label>
                                <value>40</value>
                            </item>
                            <item>
                                <label>P. Enseñanza</label>
                                <value>41</value>
                            </item>
                            <item>
                                <label>Q. Servicios sociales y relacionados con la Salud humana.</label>
                                <value>42</value>
                            </item>
                            <item>
                                <label>R. Artes, entretenimiento y recreación</label>
                                <value>43</value>
                            </item>
                            <item>
                                <label>S. Otras actividades de servicio</label>
                                <value>44</value>
                            </item>
                            <item>
                                <label>T. Actividades de los hogares en calidad de empleadores, actividades indiferenciadas de producción de bienes y servicios de
                           los hogares para uso propio.
                        </label>
                                <value>45</value>
                            </item>
                            <item>
                                <label>U.Actividades de organizaciones y órganos extraterritoriales</label>
                                <value>46</value>
                            </item>
                        </ciiu2>
                        <control-52>
                            <label>Subsector</label>
                            <hint/>
                            <item>
                                <label>Primera opción</label>
                                <value>1</value>
                                <hint/>
                            </item>
                            <item>
                                <label>Segunda opción</label>
                                <value>2</value>
                                <hint/>
                            </item>
                            <item>
                                <label>Tercera opción</label>
                                <value>3</value>
                                <hint/>
                            </item>
                        </control-52>
                        <pyme>
                            <label>¿Su empresa es Pyme?</label>
                            <hint/>
                            <item>
                                <label>Si</label>
                                <hint/>
                                <value>1</value>
                            </item>
                            <item>
                                <label>No</label>
                                <hint/>
                                <value>2</value>
                            </item>
                        </pyme>
                        <empleados>
                            <label>Indique la cantidad de empleados</label>
                            <hint/>
                            <item>
                                <label>1 a 4</label>
                                <hint/>
                                <value>1</value>
                            </item>
                            <item>
                                <label>5 a 19</label>
                                <hint/>
                                <value>2</value>
                            </item>
                            <item>
                                <label>20 a 99</label>
                                <hint/>
                                <value>3</value>
                            </item>
                        </empleados>
                        <ventasAnuales>
                            <label>Indique las ventas anuales (sin IVA)</label>
                            <hint/>
                            <item>
                                <label>Hasta 2.000.000 UI</label>
                                <hint/>
                                <value>1</value>
                            </item>
                            <item>
                                <label>Hasta 10.000.000 UI</label>
                                <hint/>
                                <value>2</value>
                            </item>
                            <item>
                                <label>Hasta 75.000.000 UI</label>
                                <hint/>
                                <value>3</value>
                            </item>
                        </ventasAnuales>
                        <certificado_pyme>
                            <label>Adjunte el Certificado de Pyme vigente expedido por Dinapyme</label>
                            <hint/>
                        </certificado_pyme>
                        <section-41>
                            <label>B. DATOS DEL DIRECTIVO QUE REPRESENTA A LA EMPRESA/INSTITUCIóN</label>
                            <help/>
                        </section-41>
                        <section-53>
                            <label>C. DATOS DEL DIRECTIVO QUE REPRESENTA A LA EMPRESA/INSTITUCIóN</label>
                            <help/>
                        </section-53>
                    </resource>
                </resources>
            </xf:instance>
            <xf:instance xxf:readonly="true" xxf:exclude-result-prefixes="#all" id="section-81-template">
                <section-81-iteration>
                    <grid-10>
                        <control-72/>
                    </grid-10>
                    <grid-9>
                        <combustible/>
                        <aserrin/>
                        <bagazo/>
                        <biodiesel/>
                        <bioetanol/>
                        <carbon_mineral/>
                    </grid-9>
                    <grid-8>
                        <ciudad/>
                        <dpto/>
                        <tipoConsumidor/>
                        <consumoEnergiaElectrica/>
                    </grid-8>
                    <grid-7>
                        <denominacionLocal/>
                        <direccion/>
                    </grid-7>
                    <grid-83>
                        <grid-83-iteration>
                            <nombreMedida/>
                            <usoPrincipal/>
                            <energetico_evitado/>
                        </grid-83-iteration>
                    </grid-83>
                </section-81-iteration>
            </xf:instance>
            <xf:instance xxf:readonly="true" xxf:exclude-result-prefixes="#all" id="grid-83-template">
                <grid-83-iteration>
                    <nombreMedida/>
                    <usoPrincipal/>
                    <energetico_evitado/>
                </grid-83-iteration>
            </xf:instance>
            <xf:instance xxf:readonly="true" xxf:exclude-result-prefixes="#all" id="section-53-template">
                <section-53-iteration>
                    <grid-5>
                        <nombreCertificador/>
                        <cargoCertificador/>
                    </grid-5>
                    <grid-43>
                        <grid-43-iteration>
                            <control-45/>
                            <control-46/>
                        </grid-43-iteration>
                    </grid-43>
                    <section-47>
                        <section-47-iteration>
                            <grid-6>
                                <universidad/>
                            </grid-6>
                            <grid-50>
                                <grid-50-iteration>
                                    <curso/>
                                </grid-50-iteration>
                            </grid-50>
                        </section-47-iteration>
                    </section-47>
                </section-53-iteration>
            </xf:instance>
            <xf:instance xxf:readonly="true" xxf:exclude-result-prefixes="#all" id="grid-43-template">
                <grid-43-iteration>
                    <control-45/>
                    <control-46/>
                </grid-43-iteration>
            </xf:instance>
            <xf:instance xxf:readonly="true" xxf:exclude-result-prefixes="#all" id="section-47-template">
                <section-47-iteration>
                    <grid-6>
                        <universidad/>
                    </grid-6>
                    <grid-50>
                        <grid-50-iteration>
                            <curso/>
                        </grid-50-iteration>
                    </grid-50>
                </section-47-iteration>
            </xf:instance>
            <xf:instance xxf:readonly="true" xxf:exclude-result-prefixes="#all" id="grid-50-template">
                <grid-50-iteration>
                    <curso/>
                </grid-50-iteration>
            </xf:instance>
        </xf:model>
   </xh:head>
   <xh:body>
        <fr:view>
            <fr:body xmlns:p="http://www.orbeon.com/oxf/pipeline" xmlns:xbl="http://www.w3.org/ns/xbl"
                     xmlns:oxf="http://www.orbeon.com/oxf/processors">
                <fr:section id="Datos-generales-control" bind="Datos-generales-bind">
                    <xf:label ref="$form-resources/Datos-generales/label"/>
                    <fr:grid id="grid-1-grid" bind="grid-1-bind">
                        <fr:c y="1" x="1" w="6">
                                <xf:input id="nombre-control" bind="nombre-bind" class="fr-summary fr-search">
                                    <xf:label ref="$form-resources/nombre/label"/>
                                    <xf:hint ref="$form-resources/nombre/hint"/>
                                    <xf:alert ref="$fr-resources/detail/labels/alert"/>
                                </xf:input>
                            </fr:c>
                        <fr:c y="1" x="7" w="6">
                                <xf:input id="rut-control" bind="rut-bind" class="fr-summary fr-search">
                                    <xf:label ref="$form-resources/rut/label"/>
                                    <xf:hint ref="$form-resources/rut/hint"/>
                                    <xf:alert ref="$fr-resources/detail/labels/alert"/>
                                </xf:input>
                            </fr:c>
                    </fr:grid>
                    <fr:grid id="grid-2-grid" bind="grid-2-bind">
                        <fr:c y="1" x="1" w="6">
                                <fr:dropdown-select1 xmlns:xxbl="http://orbeon.org/oxf/xml/xbl" id="ciiu2-control" bind="ciiu2-bind">
                                    <xf:label ref="$form-resources/ciiu2/label"/>
                                    <xf:hint ref="$form-resources/ciiu2/hint"/>
                                    <xf:alert ref="$fr-resources/detail/labels/alert"/>
                                    <xf:itemset ref="$form-resources/ciiu2/item">
                                        <xf:label ref="label"/>
                                        <xf:value ref="value"/>
                                    </xf:itemset>
                                </fr:dropdown-select1>
                            </fr:c>
                        <fr:c y="1" x="7" w="6">
                                <xf:select1 id="control-52-control" appearance="full" bind="control-52-bind">
                                    <xf:label ref="$form-resources/control-52/label"/>
                                    <xf:hint ref="$form-resources/control-52/hint"/>
                                    <xf:alert ref="$fr-resources/detail/labels/alert"/>
                                    <xf:itemset ref="$form-resources/control-52/item">
                                        <xf:label ref="label"/>
                                        <xf:value ref="value"/>
                                        <xf:hint ref="hint"/>
                                    </xf:itemset>
                                </xf:select1>
                            </fr:c>
                    </fr:grid>
                    <fr:grid id="grid-3-grid" bind="grid-3-bind">
                        <fr:c y="1" x="1" w="3">
                                <xf:select id="pyme-control" appearance="full" bind="pyme-bind">
                                    <xf:label ref="$form-resources/pyme/label"/>
                                    <xf:hint ref="$form-resources/pyme/hint"/>
                                    <xf:alert ref="$fr-resources/detail/labels/alert"/>
                                    <xf:itemset ref="$form-resources/pyme/item">
                                        <xf:label ref="label"/>
                                        <xf:value ref="value"/>
                                        <xf:hint ref="hint"/>
                                    </xf:itemset>
                                </xf:select>
                            </fr:c>
                        <fr:c y="1" x="4" w="3">
                                <xf:select id="empleados-control" appearance="full" bind="empleados-bind">
                                    <xf:label ref="$form-resources/empleados/label"/>
                                    <xf:hint ref="$form-resources/empleados/hint"/>
                                    <xf:alert ref="$fr-resources/detail/labels/alert"/>
                                    <xf:itemset ref="$form-resources/empleados/item">
                                        <xf:label ref="label"/>
                                        <xf:value ref="value"/>
                                        <xf:hint ref="hint"/>
                                    </xf:itemset>
                                </xf:select>
                            </fr:c>
                        <fr:c y="1" x="7" w="3">
                                <xf:select id="ventasAnuales-control" appearance="full" bind="ventasAnuales-bind">
                                    <xf:label ref="$form-resources/ventasAnuales/label"/>
                                    <xf:hint ref="$form-resources/ventasAnuales/hint"/>
                                    <xf:alert ref="$fr-resources/detail/labels/alert"/>
                                    <xf:itemset ref="$form-resources/ventasAnuales/item">
                                        <xf:label ref="label"/>
                                        <xf:value ref="value"/>
                                        <xf:hint ref="hint"/>
                                    </xf:itemset>
                                </xf:select>
                            </fr:c>
                        <fr:c y="1" x="10" w="3">
                                <fr:attachment xmlns="http://orbeon.org/oxf/xml/form-builder"
                                           xmlns:xxbl="http://orbeon.org/oxf/xml/xbl"
                                           id="certificado_pyme-control"
                                           bind="certificado_pyme-bind"
                                           class="fr-attachment">
                                    <xf:label ref="$form-resources/certificado_pyme/label"/>
                                    <xf:hint ref="$form-resources/certificado_pyme/hint"/>
                                    <xf:alert ref="$fr-resources/detail/labels/alert"/>
                                    <xf:filename ref="@filename"/>
                                    <xf:mediatype ref="@mediatype"/>
                                    <xxf:size ref="@size"/>
                                </fr:attachment>
                            </fr:c>
                    </fr:grid>
                </fr:section>
                <fr:section id="section-41-control" bind="section-41-bind">
                    <xf:label ref="$form-resources/section-41/label"/>
                    <fr:grid id="grid-4-grid" bind="grid-4-bind">
                        <fr:c y="1" x="1" w="6">
                                <xf:input id="nombreDirectivo-control" bind="nombreDirectivo-bind">
                                    <xf:label ref="$form-resources/nombreDirectivo/label"/>
                                    <xf:hint ref="$form-resources/nombreDirectivo/hint"/>
                                    <xf:alert ref="$fr-resources/detail/labels/alert"/>
                                </xf:input>
                            </fr:c>
                        <fr:c y="1" x="7" w="6">
                                <xf:input id="cargoDirectivo-control" bind="cargoDirectivo-bind">
                                    <xf:label ref="$form-resources/cargoDirectivo/label"/>
                                    <xf:hint ref="$form-resources/cargoDirectivo/hint"/>
                                    <xf:alert ref="$fr-resources/detail/labels/alert"/>
                                </xf:input>
                            </fr:c>
                        <fr:c y="2" x="1" w="6">
                                <xf:input id="direccionDirectivo-control" bind="direccionDirectivo-bind">
                                    <xf:label ref="$form-resources/direccionDirectivo/label"/>
                                    <xf:hint ref="$form-resources/direccionDirectivo/hint"/>
                                    <xf:alert ref="$fr-resources/detail/labels/alert"/>
                                </xf:input>
                            </fr:c>
                        <fr:c y="2" x="7" w="6">
                                <xf:input id="telefonoDirectivo-control" bind="telefonoDirectivo-bind">
                                    <xf:label ref="$form-resources/telefonoDirectivo/label"/>
                                    <xf:hint ref="$form-resources/telefonoDirectivo/hint"/>
                                    <xf:alert ref="$fr-resources/detail/labels/alert"/>
                                </xf:input>
                            </fr:c>
                        <fr:c y="3" x="1" w="6">
                                <xf:input id="emailDirectivo-control" bind="emailDirectivo-bind"
                                      class="fr-search fr-summary">
                                    <xf:label ref="$form-resources/emailDirectivo/label"/>
                                    <xf:hint ref="$form-resources/emailDirectivo/hint"/>
                                    <xf:alert ref="$fr-resources/detail/labels/alert"/>
                                </xf:input>
                            </fr:c>
                        <fr:c y="3" x="7" w="6">
                            </fr:c>
                    </fr:grid>
                </fr:section>
                <fr:section id="section-53-control" bind="section-53-bind" repeat="content" min="1"
                            template="instance(''section-53-template'')">
                    <xf:label ref="$form-resources/section-53/label"/>
                    <fr:grid id="grid-5-grid" bind="grid-5-bind">
                        <fr:c y="1" x="1" w="6">
                                <xf:input id="nombreCertificador-control" bind="nombreCertificador-bind">
                                    <xf:label ref="$form-resources/nombreCertificador/label"/>
                                    <xf:hint ref="$form-resources/nombreCertificador/hint"/>
                                    <xf:alert ref="$fr-resources/detail/labels/alert"/>
                                </xf:input>
                            </fr:c>
                        <fr:c y="1" x="7" w="6">
                                <xf:input id="cargoCertificador-control" bind="cargoCertificador-bind">
                                    <xf:label ref="$form-resources/cargoCertificador/label"/>
                                    <xf:hint ref="$form-resources/cargoCertificador/hint"/>
                                    <xf:alert ref="$fr-resources/detail/labels/alert"/>
                                </xf:input>
                            </fr:c>
                    </fr:grid>
                    <fr:grid id="grid-43-grid" bind="grid-43-bind" repeat="content" min="1"
                             template="instance(''grid-43-template'')">
                        <fr:c y="1" x="1" w="6">
                                <xf:input id="control-45-control" bind="control-45-bind">
                                    <xf:label ref="$form-resources/control-45/label"/>
                                    <xf:hint ref="$form-resources/control-45/hint"/>
                                    <xf:alert ref="$fr-resources/detail/labels/alert"/>
                                </xf:input>
                            </fr:c>
                        <fr:c y="1" x="7" w="6">
                                <xf:input id="control-46-control" bind="control-46-bind">
                                    <xf:label ref="$form-resources/control-46/label"/>
                                    <xf:hint ref="$form-resources/control-46/hint"/>
                                    <xf:alert ref="$fr-resources/detail/labels/alert"/>
                                </xf:input>
                            </fr:c>
                    </fr:grid>
                    <fr:section id="section-47-control" bind="section-47-bind" repeat="content" min="1"
                                template="instance(''section-47-template'')">
                        <xf:label ref="$form-resources/section-47/label"/>
                        <fr:grid id="grid-6-grid" bind="grid-6-bind">
                            <fr:c y="1" x="1" w="12">
                                    <xf:input id="universidad-control" bind="universidad-bind">
                                        <xf:label ref="$form-resources/universidad/label"/>
                                        <xf:hint ref="$form-resources/universidad/hint"/>
                                        <xf:alert ref="$fr-resources/detail/labels/alert"/>
                                    </xf:input>
                                </fr:c>
                        </fr:grid>
                        <fr:grid id="grid-50-grid" bind="grid-50-bind" repeat="content" min="1"
                                 template="instance(''grid-50-template'')">
                            <fr:c y="1" x="1" w="12">
                                    <xf:input id="curso-control" bind="curso-bind">
                                        <xf:label ref="$form-resources/curso/label"/>
                                        <xf:hint ref="$form-resources/curso/hint"/>
                                        <xf:alert ref="$fr-resources/detail/labels/alert"/>
                                    </xf:input>
                                </fr:c>
                        </fr:grid>
                    </fr:section>
                </fr:section>
                <fr:section id="section-81-control" bind="section-81-bind" repeat="content" min="1"
                            max="41"
                            template="instance(''section-81-template'')">
                    <xf:label ref="$form-resources/section-81/label"/>
                    <fr:grid id="grid-7-grid" bind="grid-7-bind">
                        <fr:c y="1" x="1" w="12">
                                <xf:input id="denominacionLocal-control" bind="denominacionLocal-bind">
                                    <xf:label ref="$form-resources/denominacionLocal/label"/>
                                    <xf:hint ref="$form-resources/denominacionLocal/hint"/>
                                    <xf:alert ref="$fr-resources/detail/labels/alert"/>
                                </xf:input>
                            </fr:c>
                        <fr:c y="2" x="1" w="12">
                                <xf:input id="direccion-control" bind="direccion-bind">
                                    <xf:label ref="$form-resources/direccion/label"/>
                                    <xf:hint ref="$form-resources/direccion/hint"/>
                                    <xf:alert ref="$fr-resources/detail/labels/alert"/>
                                </xf:input>
                            </fr:c>
                    </fr:grid>
                    <fr:grid id="grid-8-grid" bind="grid-8-bind">
                        <fr:c y="1" x="1" w="6">
                                <xf:input id="ciudad-control" bind="ciudad-bind">
                                    <xf:label ref="$form-resources/ciudad/label"/>
                                    <xf:hint ref="$form-resources/ciudad/hint"/>
                                    <xf:alert ref="$fr-resources/detail/labels/alert"/>
                                </xf:input>
                            </fr:c>
                        <fr:c y="1" x="7" w="6">
                                <fr:dropdown-select1 xmlns:xxbl="http://orbeon.org/oxf/xml/xbl" id="dpto-control" bind="dpto-bind">
                                    <xf:label ref="$form-resources/dpto/label"/>
                                    <xf:hint ref="$form-resources/dpto/hint"/>
                                    <xf:alert ref="$fr-resources/detail/labels/alert"/>
                                    <xf:itemset ref="$form-resources/dpto/item">
                                        <xf:label ref="label"/>
                                        <xf:value ref="value"/>
                                    </xf:itemset>
                                </fr:dropdown-select1>
                            </fr:c>
                        <fr:c y="2" x="1" w="6">
                                <fr:dropdown-select1 xmlns:xxbl="http://orbeon.org/oxf/xml/xbl" id="tipoConsumidor-control"
                                                 bind="tipoConsumidor-bind">
                                    <xf:label ref="$form-resources/tipoConsumidor/label"/>
                                    <xf:hint ref="$form-resources/tipoConsumidor/hint"/>
                                    <xf:alert ref="$fr-resources/detail/labels/alert"/>
                                    <xf:itemset ref="$form-resources/tipoConsumidor/item">
                                        <xf:label ref="label"/>
                                        <xf:value ref="value"/>
                                    </xf:itemset>
                                </fr:dropdown-select1>
                            </fr:c>
                        <fr:c y="2" x="7" w="6">
                                <xf:input id="consumoEnergiaElectrica-control" bind="consumoEnergiaElectrica-bind">
                                    <xf:label ref="$form-resources/consumoEnergiaElectrica/label"/>
                                    <xf:hint ref="$form-resources/consumoEnergiaElectrica/hint"/>
                                    <xf:alert ref="$fr-resources/detail/labels/alert"/>
                                </xf:input>
                            </fr:c>
                    </fr:grid>
                    <fr:grid id="grid-9-grid" bind="grid-9-bind">
                        <fr:c y="1" x="1" w="12">
                                <fr:box-select xmlns="http://orbeon.org/oxf/xml/form-builder"
                                           xmlns:xxbl="http://orbeon.org/oxf/xml/xbl"
                                           xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                                           id="combustible-control"
                                           bind="combustible-bind">
                                    <xf:label ref="$form-resources/combustible/label"/>
                                    <xf:hint ref="$form-resources/combustible/hint"/>
                                    <xf:alert ref="$fr-resources/detail/labels/alert"/>
                                    <xf:itemset ref="$form-resources/combustible/item">
                                        <xf:label ref="label"/>
                                        <xf:value ref="value"/>
                                    </xf:itemset>
                                </fr:box-select>
                            </fr:c>
                        <fr:c y="2" x="1" w="12">
                                <fr:number xmlns="http://orbeon.org/oxf/xml/form-builder"
                                       xmlns:xxbl="http://orbeon.org/oxf/xml/xbl"
                                       xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                                       id="aserrin-control"
                                       bind="aserrin-bind"
                                       class="ag-block-label ag-block-label-o-left">
                                    <xf:label ref="$form-resources/aserrin/label"/>
                                    <xf:hint ref="$form-resources/aserrin/hint"/>
                                    <xf:alert ref="$fr-resources/detail/labels/alert"/>
                                </fr:number>
                            </fr:c>
                        <fr:c y="3" x="1" w="12">
                                <fr:number xmlns="http://orbeon.org/oxf/xml/form-builder"
                                       xmlns:xxbl="http://orbeon.org/oxf/xml/xbl"
                                       xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                                       id="bagazo-control"
                                       bind="bagazo-bind"
                                       class="ag-block-label ag-block-label-o-left">
                                    <xf:label ref="$form-resources/bagazo/label"/>
                                    <xf:hint ref="$form-resources/bagazo/hint"/>
                                    <xf:alert ref="$fr-resources/detail/labels/alert"/>
                                </fr:number>
                            </fr:c>
                        <fr:c y="4" x="1" w="12">
                                <fr:number xmlns="http://orbeon.org/oxf/xml/form-builder"
                                       xmlns:xxbl="http://orbeon.org/oxf/xml/xbl"
                                       xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                                       id="biodiesel-control"
                                       bind="biodiesel-bind"
                                       class="ag-block-label ag-block-label-o-left">
                                    <xf:label ref="$form-resources/biodiesel/label"/>
                                    <xf:hint ref="$form-resources/biodiesel/hint"/>
                                    <xf:alert ref="$fr-resources/detail/labels/alert"/>
                                </fr:number>
                            </fr:c>
                        <fr:c y="5" x="1" w="12">
                                <fr:number xmlns="http://orbeon.org/oxf/xml/form-builder"
                                       xmlns:xxbl="http://orbeon.org/oxf/xml/xbl"
                                       xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                                       id="bioetanol-control"
                                       bind="bioetanol-bind"
                                       class="ag-block-label ag-block-label-o-left">
                                    <xf:label ref="$form-resources/bioetanol/label"/>
                                    <xf:hint ref="$form-resources/bioetanol/hint"/>
                                    <xf:alert ref="$fr-resources/detail/labels/alert"/>
                                </fr:number>
                            </fr:c>
                        <fr:c y="6" x="1" w="12">
                                <fr:number xmlns="http://orbeon.org/oxf/xml/form-builder"
                                       xmlns:xxbl="http://orbeon.org/oxf/xml/xbl"
                                       xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                                       id="carbon_mineral-control"
                                       bind="carbon_mineral-bind"
                                       class="ag-block-label ag-block-label-o-left">
                                    <xf:label ref="$form-resources/carbon_mineral/label"/>
                                    <xf:hint ref="$form-resources/carbon_mineral/hint"/>
                                    <xf:alert ref="$fr-resources/detail/labels/alert"/>
                                </fr:number>
                            </fr:c>
                    </fr:grid>
                    <fr:grid id="grid-10-grid" bind="grid-10-bind">
                        <fr:c y="1" x="1" w="12">
                                <xf:output id="control-72-control" bind="control-72-bind">
                                    <xf:label ref="$form-resources/control-72/label"/>
                                    <xf:hint ref="$form-resources/control-72/hint"/>
                                    <xf:alert ref="$fr-resources/detail/labels/alert"/>
                                </xf:output>
                            </fr:c>
                    </fr:grid>
                    <fr:grid id="grid-83-grid" repeat="content" bind="grid-83-bind"
                             template="instance(''grid-83-template'')"
                             min="1">
                        <fr:c y="1" x="1" w="4">
                                <xf:input id="nombreMedida-control" bind="nombreMedida-bind">
                                    <xf:label ref="$form-resources/nombreMedida/label"/>
                                    <xf:hint ref="$form-resources/nombreMedida/hint"/>
                                    <xf:alert ref="$fr-resources/detail/labels/alert"/>
                                </xf:input>
                            </fr:c>
                        <fr:c y="1" x="5" w="4">
                                <fr:dropdown-select1 xmlns:xxbl="http://orbeon.org/oxf/xml/xbl" id="usoPrincipal-control"
                                                 bind="usoPrincipal-bind">
                                    <xf:label ref="$form-resources/usoPrincipal/label"/>
                                    <xf:hint ref="$form-resources/usoPrincipal/hint"/>
                                    <xf:alert ref="$fr-resources/detail/labels/alert"/>
                                    <xf:itemset ref="$form-resources/usoPrincipal/item">
                                        <xf:label ref="label"/>
                                        <xf:value ref="value"/>
                                    </xf:itemset>
                                </fr:dropdown-select1>
                            </fr:c>
                        <fr:c y="1" x="9" w="4">
                                <fr:dropdown-select1 xmlns:xxbl="http://orbeon.org/oxf/xml/xbl" id="energetico_evitado-control"
                                                 bind="energetico_evitado-bind">
                                    <xf:label ref="$form-resources/energetico_evitado/label"/>
                                    <xf:hint ref="$form-resources/energetico_evitado/hint"/>
                                    <xf:alert ref="$fr-resources/detail/labels/alert"/>
                                    <xf:itemset ref="$form-resources/energetico_evitado/item">
                                        <xf:label ref="label"/>
                                        <xf:value ref="value"/>
                                    </xf:itemset>
                                </fr:dropdown-select1>
                            </fr:c>
                    </fr:grid>
                </fr:section>
            </fr:body>
        </fr:view>
   </xh:body>
</xh:html>'