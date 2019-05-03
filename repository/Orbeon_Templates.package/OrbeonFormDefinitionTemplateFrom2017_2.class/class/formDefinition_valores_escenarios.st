miem
formDefinition_valores_escenarios

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
         fr:data-format-version="4.0.0">
   <xh:head>
        <xh:meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <xh:title>Valores Escenarios de Medidas Energéticas</xh:title>
        <xf:model id="fr-form-model" xxf:expose-xpath-types="true">
            <xf:instance id="fr-form-instance" xxf:exclude-result-prefixes="#all" xxf:index="id">
                <form>
                    <internal-section>
                        <s/>
                        <k/>
                        <uuid/>
                        <oop/>
                        <assignmentOop/>
                    </internal-section>
                    <section-11>
                        <username/>
                        <rol/>
                        <processId/>
                    </section-11>
                    <section-1>
                        <section-1-iteration>
                            <escSinMedidaUsoPrincipal/>
                            <escSinMedidaFechaInicioOperacion/>
                            <escSinMedidaEsOperativa/>
                            <escSinMedidaMoneda/>
                            <escSinMedidaInversionTotal/>
                            <escSinMedidaVidaUtil/>
                            <section-2>
                                <section-2-iteration>
                                    <escSinMedidaFuenteEnergia>fuel-oil-pesado</escSinMedidaFuenteEnergia>
                                    <escConMedidaFuenteEnergia/>
                                    <escSinMedidaPrecioEnergetico/>
                                    <escConMedidaPrecioEnergetico/>
                                    <escSinMedidaUyuUnidadFisica/>
                                    <escConMedidaUyuUnidadFisica/>
                                    <escSinMedidaConsumoEnergia/>
                                    <escConMedidaConsumoEnergia/>
                                    <escSinMedidaUnidadFisica/>
                                    <escConMedidaUnidadFisica/>
                                    <escSinMedidaValorTepAnio/>
                                    <escConMedidaValorTepAnio/>
                                    <escSinMedidaValorUyu/>
                                    <escConMedidaValorUyu/>
                                    <escSinMedidaEmisionCO2/>
                                    <escConMedidaEmisionCO2/>
                                </section-2-iteration>
                            </section-2>
                        </section-1-iteration>
                    </section-1>
                </form>
            </xf:instance>
            <xf:bind id="fr-form-binds" ref="instance(''fr-form-instance'')">
                <xf:bind id="internal-section-bind" name="internal-section" ref="internal-section">
                    <xf:bind id="s-bind" name="s" ref="s" xxf:default="xxf:get-request-parameter(''s'')"
                             required="true()"
                             readonly="true()"
                             calculate="xxf:get-request-parameter(''s'')"/>
                    <xf:bind id="k-bind" ref="k" name="k" xxf:default="xxf:get-request-parameter(''k'')"
                             required="true()"
                             readonly="true()"
                             calculate="xxf:get-request-parameter(''k'')"/>
                    <xf:bind id="uuid-bind" ref="uuid" name="uuid"
                             xxf:default="xxf:get-request-parameter(''token'')"
                             required="true()"
                             readonly="true()"
                             calculate="xxf:get-request-parameter(''token'')"/>
                    <xf:bind id="oop-bind" ref="oop" name="oop"
                             xxf:default="xxf:get-request-parameter(''oop'')"
                             required="true()"
                             readonly="true()"
                             calculate="xxf:get-request-parameter(''oop'')"/>
                    <xf:bind id="assignmentOop-bind" ref="assignmentOop" name="assignmentOop"
                             required="true()"
                             readonly="true()"
                             calculate="xxf:get-request-parameter(''oop2'')"
                             xxf:default="xxf:get-request-parameter(''oop2'')"/>
                </xf:bind>
                <xf:bind id="section-11-bind" ref="section-11" name="section-11">
                    <xf:bind id="username-bind" ref="username" name="username" required="true()"
                             readonly="true()"/>
                    <xf:bind id="processId-bind" ref="processId" name="processId" required="true()"
                             readonly="true()"/>
                    <xf:bind id="rol-bind" ref="rol" name="rol" required="true()" readonly="true()"/>
                </xf:bind>
                <xf:bind id="section-1-bind" ref="section-1" name="section-1">
                    <xf:bind id="section-1-iteration-bind" ref="section-1-iteration"
                             name="section-1-iteration">
                        <xf:bind id="escSinMedidaUsoPrincipal-bind" ref="escSinMedidaUsoPrincipal"
                                 name="escSinMedidaUsoPrincipal"
                                 required="true()"/>
                        <xf:bind id="escSinMedidaFechaInicioOperacion-bind"
                                 ref="escSinMedidaFechaInicioOperacion"
                                 name="escSinMedidaFechaInicioOperacion"
                                 type="xs:date"
                                 required="true()"/>
                        <xf:bind id="escSinMedidaEsOperativa-bind" ref="escSinMedidaEsOperativa"
                                 name="escSinMedidaEsOperativa"
                                 type="xs:boolean"
                                 required="true()"/>
                        <xf:bind id="escSinMedidaInversionTotal-bind" ref="escSinMedidaInversionTotal"
                                 name="escSinMedidaInversionTotal"
                                 xxf:whitespace="trim"
                                 required="true()"
                                 type="xs:decimal"/>
                        <xf:bind id="escSinMedidaMoneda-bind" ref="escSinMedidaMoneda" name="escSinMedidaMoneda"
                                 required="true()"/>
                        <xf:bind id="escSinMedidaVidaUtil-bind" ref="escSinMedidaVidaUtil"
                                 name="escSinMedidaVidaUtil"
                                 xxf:whitespace="trim"
                                 required="true()"
                                 type="xs:integer"/>
                        <xf:bind id="section-2-bind" ref="section-2" name="section-2">
                            <xf:bind id="section-2-iteration-bind" ref="section-2-iteration"
                                     name="section-2-iteration">
                                <xf:bind id="escSinMedidaFuenteEnergia-bind" ref="escSinMedidaFuenteEnergia"
                                         name="escSinMedidaFuenteEnergia"
                                         required="true()"/>
                                <xf:bind id="escConMedidaFuenteEnergia-bind" ref="escConMedidaFuenteEnergia"
                                         name="escConMedidaFuenteEnergia"
                                         required="true()"/>
                                <xf:bind id="escSinMedidaPrecioEnergetico-bind" ref="escSinMedidaPrecioEnergetico"
                                         name="escSinMedidaPrecioEnergetico"
                                         xxf:whitespace="trim"
                                         required="true()"
                                         type="xs:decimal"/>
                                <xf:bind id="escConMedidaPrecioEnergetico-bind" ref="escConMedidaPrecioEnergetico"
                                         name="escConMedidaPrecioEnergetico"
                                         xxf:whitespace="trim"
                                         required="true()"
                                         type="xs:decimal"/>
                                <xf:bind id="escSinMedidaUyuUnidadFisica-bind" ref="escSinMedidaUyuUnidadFisica"
                                         name="escSinMedidaUyuUnidadFisica"
                                         xxf:whitespace="trim"
                                         readonly="true()"
                                         calculate="concat(''UYU/'',$escSinMedidaUnidadFisica)"/>
                                <xf:bind id="escConMedidaUyuUnidadFisica-bind" ref="escConMedidaUyuUnidadFisica"
                                         name="escConMedidaUyuUnidadFisica"
                                         xxf:whitespace="trim"
                                         readonly="true()"
                                         calculate="concat(''UYU/'',$escConMedidaUnidadFisica)"/>
                                <xf:bind id="escSinMedidaConsumoEnergia-bind" ref="escSinMedidaConsumoEnergia"
                                         name="escSinMedidaConsumoEnergia"
                                         xxf:whitespace="trim"
                                         required="true()"
                                         type="xs:decimal"/>
                                <xf:bind id="escConMedidaConsumoEnergia-bind" ref="escConMedidaConsumoEnergia"
                                         name="escConMedidaConsumoEnergia"
                                         xxf:whitespace="trim"
                                         required="true()"
                                         type="xs:decimal"/>
                                <xf:bind id="escSinMedidaUnidadFisica-bind" ref="escSinMedidaUnidadFisica"
                                         name="escSinMedidaUnidadFisica"
                                         xxf:whitespace="trim"
                                         required="true()"
                                         readonly="true()"/>
                                <xf:bind id="escConMedidaUnidadFisica-bind" ref="escConMedidaUnidadFisica"
                                         name="escConMedidaUnidadFisica"
                                         xxf:whitespace="trim"
                                         required="true()"
                                         readonly="true()"/>
                                <xf:bind id="escSinMedidaValorTepAnio-bind" ref="escSinMedidaValorTepAnio"
                                         name="escSinMedidaValorTepAnio"
                                         xxf:whitespace="trim"
                                         required="true()"
                                         type="xs:decimal"
                                         readonly="true()"/>
                                <xf:bind id="escConMedidaValorTepAnio-bind" ref="escConMedidaValorTepAnio"
                                         name="escConMedidaValorTepAnio"
                                         xxf:whitespace="trim"
                                         required="true()"
                                         type="xs:decimal"
                                         readonly="true()"/>
                                <xf:bind id="escSinMedidaValorUyu-bind" ref="escSinMedidaValorUyu"
                                         name="escSinMedidaValorUyu"
                                         xxf:whitespace="trim"
                                         required="true()"
                                         type="xs:decimal"
                                         readonly="true()"
                                         calculate="$escSinMedidaPrecioEnergetico * $escSinMedidaConsumoEnergia"/>
                                <xf:bind id="escConMedidaValorUyu-bind" ref="escConMedidaValorUyu"
                                         name="escConMedidaValorUyu"
                                         xxf:whitespace="trim"
                                         required="true()"
                                         type="xs:decimal"
                                         readonly="true()"
                                         calculate="$escConMedidaPrecioEnergetico * $escConMedidaConsumoEnergia"/>
                                <xf:bind id="escSinMedidaEmisionCO2-bind" ref="escSinMedidaEmisionCO2"
                                         name="escSinMedidaEmisionCO2"
                                         xxf:whitespace="trim"
                                         required="true()"
                                         type="xs:decimal"
                                         readonly="true()"/>
                                <xf:bind id="escConMedidaEmisionCO2-bind" ref="escConMedidaEmisionCO2"
                                         name="escConMedidaEmisionCO2"
                                         xxf:whitespace="trim"
                                         required="true()"
                                         type="xs:decimal"
                                         readonly="true()"/>
                            </xf:bind>
                        </xf:bind>
                    </xf:bind>
                </xf:bind>
            </xf:bind>
            <xf:instance xxf:readonly="true" id="fr-form-metadata" xxf:exclude-result-prefixes="#all">
                <metadata>
                    <application-name>dne</application-name>
                    <form-name>valores-escenarios</form-name>
                    <title xml:lang="en">Valores Escenarios de Medidas Energéticas</title>
                    <description xml:lang="en"/>
                    <title xml:lang="es">Escenario Sin Medidas Energéticas</title>
                    <description xml:lang="es"/>
                    <available>true</available>
                </metadata>
            </xf:instance>
            <xf:instance id="fr-form-attachments" xxf:exclude-result-prefixes="#all">
                <attachments>
                    <css mediatype="text/css" filename="" size=""/>
                    <pdf mediatype="application/pdf" filename="" size=""/>
                </attachments>
            </xf:instance>
            <xf:instance id="fr-form-resources" xxf:readonly="false" xxf:exclude-result-prefixes="#all">
                <resources>
                    <resource xml:lang="en">
                        <escSinMedidaFuenteEnergia>
                            <label>Fuente de Energía</label>
                            <hint/>
                            <item>
                                <label>Aserrín</label>
                                <value>aserrin</value>
                            </item>
                            <item>
                                <label>Bagazo</label>
                                <value>bagazo</value>
                            </item>
                            <item>
                                <label>Biodiesel</label>
                                <value>biodiesel</value>
                            </item>
                            <item>
                                <label>Bioetanol</label>
                                <value>bioetanol</value>
                            </item>
                            <item>
                                <label>Carbón mineral</label>
                                <value>carbon-mineral</value>
                            </item>
                            <item>
                                <label>Carbón vegetal</label>
                                <value>carbon-vegetal</value>
                            </item>
                            <item>
                                <label>Cáscara de arroz</label>
                                <value>cascara-de-arroz</value>
                            </item>
                            <item>
                                <label>Casullo de cebada</label>
                                <value>casullo-de-cebada</value>
                            </item>
                            <item>
                                <label>Chips</label>
                                <value>chips</value>
                            </item>
                            <item>
                                <label>Coque de carbón</label>
                                <value>coque-de-carbon</value>
                            </item>
                            <item>
                                <label>Coque de petróleo</label>
                                <value>coque-de-petroleo</value>
                            </item>
                            <item>
                                <label>Coque de petróleo importado</label>
                                <value>coque-de-petroleo-importado</value>
                            </item>
                            <item>
                                <label>Electricidad de la red</label>
                                <value>electricidad-de-la-red</value>
                            </item>
                            <item>
                                <label>Fuel oil calefacción</label>
                                <value>fuel-oil-calefaccion</value>
                            </item>
                            <item>
                                <label>Fuel oil intermedio</label>
                                <value>fuel-oil-intermedio</value>
                            </item>
                            <item>
                                <label>Fuel oil pesado</label>
                                <value>fuel-oil-pesado</value>
                            </item>
                            <item>
                                <label>Gas natural</label>
                                <value>gas-natural</value>
                            </item>
                            <item>
                                <label>Gasoil 10S</label>
                                <value>gasoil-10s</value>
                            </item>
                            <item>
                                <label>Gasoil 50S</label>
                                <value>gasoil-50s</value>
                            </item>
                            <item>
                                <label>Gasolina aviación 100/130</label>
                                <value>gasolina-aviacion-100-130</value>
                            </item>
                            <item>
                                <label>Gasolina premium 97 30SP</label>
                                <value>gasolina-premium-97-30sp</value>
                            </item>
                            <item>
                                <label>Gasolina super 95 30SP</label>
                                <value>gasolina-super-95-30sp</value>
                            </item>
                            <item>
                                <label>GLP</label>
                                <value>glp</value>
                            </item>
                            <item>
                                <label>Leña</label>
                                <value>lena</value>
                            </item>
                            <item>
                                <label>Licor negro</label>
                                <value>licor-negro</value>
                            </item>
                            <item>
                                <label>Pellets de madera</label>
                                <value>pellets-de-madera</value>
                            </item>
                            <item>
                                <label>Propano</label>
                                <value>propano</value>
                            </item>
                            <item>
                                <label>Queroseno</label>
                                <value>queroseno</value>
                            </item>
                            <item>
                                <label>Residuos forestales</label>
                                <value>residuos-forestales</value>
                            </item>
                            <item>
                                <label>Supergas</label>
                                <value>supergas</value>
                            </item>
                        </escSinMedidaFuenteEnergia>
                        <escConMedidaFuenteEnergia>
                            <label>Fuente de Energía</label>
                            <hint/>
                            <item>
                                <label>Aserrín</label>
                                <value>aserrin</value>
                            </item>
                            <item>
                                <label>Bagazo</label>
                                <value>bagazo</value>
                            </item>
                            <item>
                                <label>Biodiesel</label>
                                <value>biodiesel</value>
                            </item>
                            <item>
                                <label>Bioetanol</label>
                                <value>bioetanol</value>
                            </item>
                            <item>
                                <label>Carbón mineral</label>
                                <value>carbon-mineral</value>
                            </item>
                            <item>
                                <label>Carbón vegetal</label>
                                <value>carbon-vegetal</value>
                            </item>
                            <item>
                                <label>Cáscara de arroz</label>
                                <value>cascara-de-arroz</value>
                            </item>
                            <item>
                                <label>Casullo de cebada</label>
                                <value>casullo-de-cebada</value>
                            </item>
                            <item>
                                <label>Chips</label>
                                <value>chips</value>
                            </item>
                            <item>
                                <label>Coque de carbón</label>
                                <value>coque-de-carbon</value>
                            </item>
                            <item>
                                <label>Coque de petróleo</label>
                                <value>coque-de-petroleo</value>
                            </item>
                            <item>
                                <label>Coque de petróleo importado</label>
                                <value>coque-de-petroleo-importado</value>
                            </item>
                            <item>
                                <label>Electricidad de la red</label>
                                <value>electricidad-de-la-red</value>
                            </item>
                            <item>
                                <label>Fuel oil calefacción</label>
                                <value>fuel-oil-calefaccion</value>
                            </item>
                            <item>
                                <label>Fuel oil intermedio</label>
                                <value>fuel-oil-intermedio</value>
                            </item>
                            <item>
                                <label>Fuel oil pesado</label>
                                <value>fuel-oil-pesado</value>
                            </item>
                            <item>
                                <label>Gas natural</label>
                                <value>gas-natural</value>
                            </item>
                            <item>
                                <label>Gasoil 10S</label>
                                <value>gasoil-10s</value>
                            </item>
                            <item>
                                <label>Gasoil 50S</label>
                                <value>gasoil-50s</value>
                            </item>
                            <item>
                                <label>Gasolina aviación 100/130</label>
                                <value>gasolina-aviacion-100-130</value>
                            </item>
                            <item>
                                <label>Gasolina premium 97 30SP</label>
                                <value>gasolina-premium-97-30sp</value>
                            </item>
                            <item>
                                <label>Gasolina super 95 30SP</label>
                                <value>gasolina-super-95-30sp</value>
                            </item>
                            <item>
                                <label>GLP</label>
                                <value>glp</value>
                            </item>
                            <item>
                                <label>Leña</label>
                                <value>lena</value>
                            </item>
                            <item>
                                <label>Licor negro</label>
                                <value>licor-negro</value>
                            </item>
                            <item>
                                <label>Pellets de madera</label>
                                <value>pellets-de-madera</value>
                            </item>
                            <item>
                                <label>Propano</label>
                                <value>propano</value>
                            </item>
                            <item>
                                <label>Queroseno</label>
                                <value>queroseno</value>
                            </item>
                            <item>
                                <label>Residuos forestales</label>
                                <value>residuos-forestales</value>
                            </item>
                            <item>
                                <label>Supergas</label>
                                <value>supergas</value>
                            </item>
                        </escConMedidaFuenteEnergia>
                        <escSinMedidaPrecioEnergetico>
                            <label>Precio del Energético - Valor</label>
                            <hint/>
                        </escSinMedidaPrecioEnergetico>
                        <escConMedidaPrecioEnergetico>
                            <label>Precio del Energético - Valor</label>
                            <hint/>
                        </escConMedidaPrecioEnergetico>
                        <escSinMedidaUyuUnidadFisica>
                            <label>UYU/unidad física</label>
                            <hint/>
                        </escSinMedidaUyuUnidadFisica>
                        <escConMedidaUyuUnidadFisica>
                            <label>UYU/unidad física</label>
                            <hint/>
                        </escConMedidaUyuUnidadFisica>
                        <escSinMedidaConsumoEnergia>
                            <label>Consumo Energía - Valor (unidad física/año)</label>
                            <hint/>
                        </escSinMedidaConsumoEnergia>
                        <escConMedidaConsumoEnergia>
                            <label>Consumo Energía - Valor (unidad física/año)</label>
                            <hint/>
                        </escConMedidaConsumoEnergia>
                        <escSinMedidaUnidadFisica>
                            <label>Unidad física</label>
                            <hint/>
                        </escSinMedidaUnidadFisica>
                        <escConMedidaUnidadFisica>
                            <label>Unidad física</label>
                            <hint/>
                        </escConMedidaUnidadFisica>
                        <escSinMedidaValorTepAnio>
                            <label>Valor (tep/año)</label>
                            <hint/>
                        </escSinMedidaValorTepAnio>
                        <escConMedidaValorTepAnio>
                            <label>Valor (tep/año)</label>
                            <hint/>
                        </escConMedidaValorTepAnio>
                        <escSinMedidaValorUyu>
                            <label>Valor (UYU/año)</label>
                            <hint/>
                        </escSinMedidaValorUyu>
                        <escConMedidaValorUyu>
                            <label>Valor (UYU/año)</label>
                            <hint/>
                        </escConMedidaValorUyu>
                        <escSinMedidaEmisionCO2>
                            <label>Emisión CO2 - tCO2 / año</label>
                            <hint/>
                        </escSinMedidaEmisionCO2>
                        <escConMedidaEmisionCO2>
                            <label>Emisión CO2 - tCO2 / año</label>
                            <hint/>
                        </escConMedidaEmisionCO2>
                        <escSinMedidaUsoPrincipal>
                            <label>Uso Principal</label>
                            <hint/>
                            <item>
                                <label>Bombeo de Agua</label>
                                <value>bombeo-de-agua</value>
                            </item>
                            <item>
                                <label>Alumbrado Público</label>
                                <value>alumbrado-publico</value>
                            </item>
                            <item>
                                <label>Calefacción de ambientes</label>
                                <value>calefaccion-de-ambientes</value>
                            </item>
                            <item>
                                <label>Calentamiento de Agua</label>
                                <value>calentamiento-de-agua</value>
                            </item>
                            <item>
                                <label>Calor directo</label>
                                <value>calor-directo</value>
                            </item>
                            <item>
                                <label>Cocción</label>
                                <value>coccion</value>
                            </item>
                            <item>
                                <label>Cogeneración</label>
                                <value>cogeneracion</value>
                            </item>
                            <item>
                                <label>Conservación de alimentos</label>
                                <value>conservacion-de-alimentos</value>
                            </item>
                            <item>
                                <label>Frío de Proceso</label>
                                <value>frio-de-proceso</value>
                            </item>
                            <item>
                                <label>Fuerza Motriz fija</label>
                                <value>fuerza-motriz-fija</value>
                            </item>
                            <item>
                                <label>Generación de electricidad</label>
                                <value>generacion-de-electricidad</value>
                            </item>
                            <item>
                                <label>Generacion de vapor</label>
                                <value>generacion-de-vapor</value>
                            </item>
                            <item>
                                <label>Iluminación</label>
                                <value>iluminacion</value>
                            </item>
                            <item>
                                <label>Riego</label>
                                <value>riego</value>
                            </item>
                            <item>
                                <label>Transporte</label>
                                <value>transporte</value>
                            </item>
                            <item>
                                <label>Transporte interno</label>
                                <value>transporte-interno</value>
                            </item>
                            <item>
                                <label>Ventilación y Refrigeración de Ambientes</label>
                                <value>ventilacion-y-refrigeracion-de-ambientes</value>
                            </item>
                            <item>
                                <label>Otros usos</label>
                                <value>otros-usos</value>
                            </item>
                        </escSinMedidaUsoPrincipal>
                        <escSinMedidaFechaInicioOperacion>
                            <label>Fecha Inicio Operación</label>
                            <hint/>
                        </escSinMedidaFechaInicioOperacion>
                        <escSinMedidaEsOperativa>
                            <label>Es Operativa ?</label>
                            <hint/>
                        </escSinMedidaEsOperativa>
                        <escSinMedidaMoneda>
                            <label>Moneda</label>
                            <hint/>
                            <item>
                                <label>USD</label>
                                <value>usd</value>
                            </item>
                            <item>
                                <label>UYU</label>
                                <value>uyu</value>
                            </item>
                            <item>
                                <label>EUR</label>
                                <value>eur</value>
                            </item>
                        </escSinMedidaMoneda>
                        <escSinMedidaInversionTotal>
                            <label>Inversión Total</label>
                            <hint/>
                        </escSinMedidaInversionTotal>
                        <escSinMedidaVidaUtil>
                            <label>Vida Util</label>
                            <hint/>
                        </escSinMedidaVidaUtil>
                        <section-2>
                            <label>Valores Antes y Después</label>
                        </section-2>
                        <username>
                            <label>User</label>
                            <hint/>
                        </username>
                        <rol>
                            <label>Rol</label>
                            <hint/>
                        </rol>
                        <processId>
                            <label>Process Id</label>
                            <hint/>
                        </processId>
                        <section-1>
                            <label>Medidas Energéticas</label>
                        </section-1>
                        <internal-section>
                            <label>Internal Section</label>
                        </internal-section>
                        <s>
                            <label>S</label>
                            <hint/>
                        </s>
                        <k>
                            <label>K</label>
                            <hint/>
                        </k>
                        <uuid>
                            <label>UUID</label>
                            <hint/>
                        </uuid>
                        <oop>
                            <label>OOP</label>
                            <hint/>
                        </oop>
                        <assignmentOop>
                            <label>OOP2</label>
                            <hint/>
                        </assignmentOop>
                        <section-11>
                            <label>Usuario</label>
                            <help/>
                        </section-11>
                    </resource>
                    <resource xml:lang="es">
                        <escSinMedidaFuenteEnergia>
                            <label/>
                            <hint/>
                            <item>
                                <label/>
                                <value>aserrin</value>
                            </item>
                            <item>
                                <label/>
                                <value>bagazo</value>
                            </item>
                            <item>
                                <label/>
                                <value>biodiesel</value>
                            </item>
                            <item>
                                <label/>
                                <value>bioetanol</value>
                            </item>
                            <item>
                                <label/>
                                <value>carbon-mineral</value>
                            </item>
                            <item>
                                <label/>
                                <value>carbon-vegetal</value>
                            </item>
                            <item>
                                <label/>
                                <value>cascara-de-arroz</value>
                            </item>
                            <item>
                                <label/>
                                <value>casullo-de-cebada</value>
                            </item>
                            <item>
                                <label/>
                                <value>chips</value>
                            </item>
                            <item>
                                <label/>
                                <value>coque-de-carbon</value>
                            </item>
                            <item>
                                <label/>
                                <value>coque-de-petroleo</value>
                            </item>
                            <item>
                                <label/>
                                <value>coque-de-petroleo-importado</value>
                            </item>
                            <item>
                                <label/>
                                <value>electricidad-de-la-red</value>
                            </item>
                            <item>
                                <label/>
                                <value>fuel-oil-calefaccion</value>
                            </item>
                            <item>
                                <label/>
                                <value>fuel-oil-intermedio</value>
                            </item>
                            <item>
                                <label/>
                                <value>fuel-oil-pesado</value>
                            </item>
                            <item>
                                <label/>
                                <value>gas-natural</value>
                            </item>
                            <item>
                                <label/>
                                <value>gasoil-10s</value>
                            </item>
                            <item>
                                <label/>
                                <value>gasoil-50s</value>
                            </item>
                            <item>
                                <label/>
                                <value>gasolina-aviacion-100-130</value>
                            </item>
                            <item>
                                <label/>
                                <value>gasolina-premium-97-30sp</value>
                            </item>
                            <item>
                                <label/>
                                <value>gasolina-super-95-30sp</value>
                            </item>
                            <item>
                                <label/>
                                <value>glp</value>
                            </item>
                            <item>
                                <label/>
                                <value>lena</value>
                            </item>
                            <item>
                                <label/>
                                <value>licor-negro</value>
                            </item>
                            <item>
                                <label/>
                                <value>pellets-de-madera</value>
                            </item>
                            <item>
                                <label/>
                                <value>propano</value>
                            </item>
                            <item>
                                <label/>
                                <value>queroseno</value>
                            </item>
                            <item>
                                <label/>
                                <value>residuos-forestales</value>
                            </item>
                            <item>
                                <label/>
                                <value>supergas</value>
                            </item>
                        </escSinMedidaFuenteEnergia>
                        <escConMedidaFuenteEnergia>
                            <label/>
                            <hint/>
                            <item>
                                <label/>
                                <value>aserrin</value>
                            </item>
                            <item>
                                <label/>
                                <value>bagazo</value>
                            </item>
                            <item>
                                <label/>
                                <value>biodiesel</value>
                            </item>
                            <item>
                                <label/>
                                <value>bioetanol</value>
                            </item>
                            <item>
                                <label/>
                                <value>carbon-mineral</value>
                            </item>
                            <item>
                                <label/>
                                <value>carbon-vegetal</value>
                            </item>
                            <item>
                                <label/>
                                <value>cascara-de-arroz</value>
                            </item>
                            <item>
                                <label/>
                                <value>casullo-de-cebada</value>
                            </item>
                            <item>
                                <label/>
                                <value>chips</value>
                            </item>
                            <item>
                                <label/>
                                <value>coque-de-carbon</value>
                            </item>
                            <item>
                                <label/>
                                <value>coque-de-petroleo</value>
                            </item>
                            <item>
                                <label/>
                                <value>coque-de-petroleo-importado</value>
                            </item>
                            <item>
                                <label/>
                                <value>electricidad-de-la-red</value>
                            </item>
                            <item>
                                <label/>
                                <value>fuel-oil-calefaccion</value>
                            </item>
                            <item>
                                <label/>
                                <value>fuel-oil-intermedio</value>
                            </item>
                            <item>
                                <label/>
                                <value>fuel-oil-pesado</value>
                            </item>
                            <item>
                                <label/>
                                <value>gas-natural</value>
                            </item>
                            <item>
                                <label/>
                                <value>gasoil-10s</value>
                            </item>
                            <item>
                                <label/>
                                <value>gasoil-50s</value>
                            </item>
                            <item>
                                <label/>
                                <value>gasolina-aviacion-100-130</value>
                            </item>
                            <item>
                                <label/>
                                <value>gasolina-premium-97-30sp</value>
                            </item>
                            <item>
                                <label/>
                                <value>gasolina-super-95-30sp</value>
                            </item>
                            <item>
                                <label/>
                                <value>glp</value>
                            </item>
                            <item>
                                <label/>
                                <value>lena</value>
                            </item>
                            <item>
                                <label/>
                                <value>licor-negro</value>
                            </item>
                            <item>
                                <label/>
                                <value>pellets-de-madera</value>
                            </item>
                            <item>
                                <label/>
                                <value>propano</value>
                            </item>
                            <item>
                                <label/>
                                <value>queroseno</value>
                            </item>
                            <item>
                                <label/>
                                <value>residuos-forestales</value>
                            </item>
                            <item>
                                <label/>
                                <value>supergas</value>
                            </item>
                        </escConMedidaFuenteEnergia>
                        <escSinMedidaPrecioEnergetico>
                            <label/>
                            <hint/>
                        </escSinMedidaPrecioEnergetico>
                        <escConMedidaPrecioEnergetico>
                            <label/>
                            <hint/>
                        </escConMedidaPrecioEnergetico>
                        <escSinMedidaUyuUnidadFisica>
                            <label/>
                            <hint/>
                        </escSinMedidaUyuUnidadFisica>
                        <escConMedidaUyuUnidadFisica>
                            <label/>
                            <hint/>
                        </escConMedidaUyuUnidadFisica>
                        <escSinMedidaConsumoEnergia>
                            <label/>
                            <hint/>
                        </escSinMedidaConsumoEnergia>
                        <escConMedidaConsumoEnergia>
                            <label/>
                            <hint/>
                        </escConMedidaConsumoEnergia>
                        <escSinMedidaUnidadFisica>
                            <label/>
                            <hint/>
                        </escSinMedidaUnidadFisica>
                        <escConMedidaUnidadFisica>
                            <label/>
                            <hint/>
                        </escConMedidaUnidadFisica>
                        <escSinMedidaValorTepAnio>
                            <label/>
                            <hint/>
                        </escSinMedidaValorTepAnio>
                        <escConMedidaValorTepAnio>
                            <label/>
                            <hint/>
                        </escConMedidaValorTepAnio>
                        <escSinMedidaValorUyu>
                            <label/>
                            <hint/>
                        </escSinMedidaValorUyu>
                        <escConMedidaValorUyu>
                            <label/>
                            <hint/>
                        </escConMedidaValorUyu>
                        <escSinMedidaEmisionCO2>
                            <label/>
                            <hint/>
                        </escSinMedidaEmisionCO2>
                        <escConMedidaEmisionCO2>
                            <label/>
                            <hint/>
                        </escConMedidaEmisionCO2>
                        <escSinMedidaUsoPrincipal>
                            <label/>
                            <hint/>
                            <item>
                                <label/>
                                <value>bombeo-de-agua</value>
                            </item>
                            <item>
                                <label/>
                                <value>alumbrado-publico</value>
                            </item>
                            <item>
                                <label/>
                                <value>calefaccion-de-ambientes</value>
                            </item>
                            <item>
                                <label/>
                                <value>calentamiento-de-agua</value>
                            </item>
                            <item>
                                <label/>
                                <value>calor-directo</value>
                            </item>
                            <item>
                                <label/>
                                <value>coccion</value>
                            </item>
                            <item>
                                <label/>
                                <value>cogeneracion</value>
                            </item>
                            <item>
                                <label/>
                                <value>conservacion-de-alimentos</value>
                            </item>
                            <item>
                                <label/>
                                <value>frio-de-proceso</value>
                            </item>
                            <item>
                                <label/>
                                <value>fuerza-motriz-fija</value>
                            </item>
                            <item>
                                <label/>
                                <value>generacion-de-electricidad</value>
                            </item>
                            <item>
                                <label/>
                                <value>generacion-de-vapor</value>
                            </item>
                            <item>
                                <label/>
                                <value>iluminacion</value>
                            </item>
                            <item>
                                <label/>
                                <value>riego</value>
                            </item>
                            <item>
                                <label/>
                                <value>transporte</value>
                            </item>
                            <item>
                                <label/>
                                <value>transporte-interno</value>
                            </item>
                            <item>
                                <label/>
                                <value>ventilacion-y-refrigeracion-de-ambientes</value>
                            </item>
                            <item>
                                <label/>
                                <value>otros-usos</value>
                            </item>
                        </escSinMedidaUsoPrincipal>
                        <escSinMedidaFechaInicioOperacion>
                            <label/>
                            <hint/>
                        </escSinMedidaFechaInicioOperacion>
                        <escSinMedidaEsOperativa>
                            <label/>
                            <hint/>
                        </escSinMedidaEsOperativa>
                        <escSinMedidaMoneda>
                            <label/>
                            <hint/>
                            <item>
                                <label/>
                                <value>usd</value>
                            </item>
                            <item>
                                <label/>
                                <value>uyu</value>
                            </item>
                            <item>
                                <label/>
                                <value>eur</value>
                            </item>
                        </escSinMedidaMoneda>
                        <escSinMedidaInversionTotal>
                            <label/>
                            <hint/>
                        </escSinMedidaInversionTotal>
                        <escSinMedidaVidaUtil>
                            <label/>
                            <hint/>
                        </escSinMedidaVidaUtil>
                        <section-2>
                            <label/>
                        </section-2>
                        <username>
                            <label>User</label>
                            <hint/>
                        </username>
                        <rol>
                            <label>Rol</label>
                            <hint/>
                        </rol>
                        <processId>
                            <label>Form Id</label>
                            <hint/>
                        </processId>
                        <section-1>
                            <label/>
                        </section-1>
                        <internal-section>
                            <label>Internal Section</label>
                        </internal-section>
                        <s>
                            <label>S</label>
                            <hint/>
                        </s>
                        <k>
                            <label>K</label>
                            <hint/>
                        </k>
                        <uuid>
                            <label>UUID</label>
                            <hint/>
                        </uuid>
                        <oop>
                            <label>OOP</label>
                            <hint/>
                        </oop>
                        <assignmentOop>
                            <label/>
                            <hint/>
                        </assignmentOop>
                        <section-11>
                            <label>Usuario</label>
                            <help/>
                        </section-11>
                    </resource>
                </resources>
            </xf:instance>
            <xf:instance xxf:readonly="true" id="section-1-template" xxf:exclude-result-prefixes="#all">
                <section-1-iteration>
                    <escSinMedidaUsoPrincipal/>
                    <escSinMedidaFechaInicioOperacion/>
                    <escSinMedidaEsOperativa/>
                    <escSinMedidaInversionTotal/>
                    <escSinMedidaMoneda/>
                    <escSinMedidaVidaUtil/>
                    <section-2>
                        <section-2-iteration>
                            <escSinMedidaFuenteEnergia/>
                            <escConMedidaFuenteEnergia/>
                            <escSinMedidaPrecioEnergetico/>
                            <escConMedidaPrecioEnergetico/>
                            <escSinMedidaUyuUnidadFisica/>
                            <escConMedidaUyuUnidadFisica/>
                            <escSinMedidaConsumoEnergia/>
                            <escConMedidaConsumoEnergia/>
                            <escSinMedidaUnidadFisica/>
                            <escConMedidaUnidadFisica/>
                            <escSinMedidaValorTepAnio/>
                            <escConMedidaValorTepAnio/>
                            <escSinMedidaValorUyu/>
                            <escConMedidaValorUyu/>
                            <escSinMedidaEmisionCO2/>
                            <escConMedidaEmisionCO2/>
                        </section-2-iteration>
                    </section-2>
                </section-1-iteration>
            </xf:instance>
            <xf:instance xxf:readonly="true" id="section-2-template" xxf:exclude-result-prefixes="#all">
                <section-2-iteration>
                    <escSinMedidaFuenteEnergia/>
                    <escConMedidaFuenteEnergia/>
                    <escSinMedidaPrecioEnergetico/>
                    <escConMedidaPrecioEnergetico/>
                    <escSinMedidaUyuUnidadFisica/>
                    <escConMedidaUyuUnidadFisica/>
                    <escSinMedidaConsumoEnergia/>
                    <escConMedidaConsumoEnergia/>
                    <escSinMedidaUnidadFisica/>
                    <escConMedidaUnidadFisica/>
                    <escSinMedidaValorTepAnio/>
                    <escConMedidaValorTepAnio/>
                    <escSinMedidaValorUyu/>
                    <escConMedidaValorUyu/>
                    <escSinMedidaEmisionCO2/>
                    <escConMedidaEmisionCO2/>
                </section-2-iteration>
            </xf:instance>
            <xf:instance id="security-token-instance" class="fr-service"
                         xxf:exclude-result-prefixes="#all">
                <body xmlns:secure="java:org.orbeon.oxf.util.SecureUtils"
                      xmlns:frf="java:org.orbeon.oxf.fr.FormRunner"
                      xmlns:p="http://www.orbeon.com/oxf/pipeline"
                      xmlns:fbf="java:org.orbeon.oxf.fb.FormBuilder">&lt;uuid&gt;&lt;/uuid&gt;</body>
            </xf:instance>
            <xf:submission id="security-token-submission" class="fr-service"
                           ref="instance(''fr-service-request-instance'')"
                           resource="http://gemstoneIP:8787/orbeon-gemstone-api/securityToken?token={xxf:get-request-parameter(''token'')}"
                           method="get"
                           serialization="application/xml"
                           mediatype="application/xml"
                           replace="instance"
                           instance="fr-service-response-instance"/>
            <xf:action id="security-action-binding">
                <xf:action event="fr-run-form-load-action-after-controls" ev:observer="fr-form-model"
                           if="true()">
                    <xf:send submission="security-token-submission"/>            
                </xf:action> 
                <xf:action event="xforms-submit" ev:observer="security-token-submission">
                    <xf:var name="request-instance-name" value="''security-token-instance''" as="xs:string"/>
                    <xf:insert ref="instance(''fr-service-request-instance'')"
                               origin="saxon:parse(instance($request-instance-name))"/>
                    <xf:action context="instance(''fr-service-request-instance'')">
               </xf:action>
                </xf:action>
                <xf:action event="xforms-submit-done" ev:observer="security-token-submission"
                           context="instance(''fr-service-response-instance'')">
                    <xf:action class="fr-set-control-value-action">
                        <xf:var name="control-name" value="''username''"/>
                        <xf:var name="control-value" value="/result/username"/>
                    </xf:action>
                    <xf:action class="fr-set-control-value-action">
                        <xf:var name="control-name" value="''rol''"/>
                        <xf:var name="control-value" value="/result/rol"/>
                    </xf:action>
                    <xf:action class="fr-set-control-value-action">
                        <xf:var name="control-name" value="''processId''"/>
                        <xf:var name="control-value" value="/result/processid"/>
                    </xf:action>
                </xf:action>
            </xf:action>
            <xf:instance id="conversion-instance" class="fr-service" xxf:exclude-result-prefixes="#all">
                        <body xmlns:xxbl="http://orbeon.org/oxf/xml/xbl"
                      xmlns:fbf="java:org.orbeon.oxf.fb.FormBuilderXPathApi">&lt;params/&gt;</body>
                    </xf:instance>
            <xf:submission id="conversion-submission" class="fr-service"
                           resource="http://gemstoneIP:8787/orbeon-gemstone-api/conversionfuenteenergia?fuente={fr:control-string-value(''escSinMedidaFuenteEnergia'')}&amp;precio={fr:control-string-value(''escSinMedidaPrecioEnergetico'')}&amp;consumo={fr:control-string-value(''escSinMedidaConsumoEnergia'')}"
                           method="get"
                           serialization="none"
                           mediatype="none"/>
            <xf:instance id="conversion2-instance" class="fr-service" xxf:exclude-result-prefixes="#all">
                        <body xmlns:xxbl="http://orbeon.org/oxf/xml/xbl"
                      xmlns:fbf="java:org.orbeon.oxf.fb.FormBuilderXPathApi">&lt;params/&gt;</body>
                    </xf:instance>
            <xf:submission id="conversion2-submission" class="fr-service"
                           resource="http://gemstoneIP:8787/orbeon-gemstone-api/conversionfuenteenergia?fuente={fr:control-string-value(''escConMedidaFuenteEnergia'')}&amp;precio={fr:control-string-value(''escConMedidaPrecioEnergetico'')}&amp;consumo={fr:control-string-value(''escConMedidaConsumoEnergia'')}"
                           method="get"
                           serialization="none"
                           mediatype="none"/>
            <xf:action id="conversion-action-binding">
                <xf:action event="xforms-value-changed" ev:observer="escSinMedidaFuenteEnergia-control"
                           if="true()">
                    <xf:send submission="conversion-submission"/>
                </xf:action>
                <xf:action event="xforms-submit" ev:observer="conversion-submission">
                    <xf:var name="request-instance-name" value="''conversion-instance''"/>
                    <xf:action/>
                </xf:action>
                <xf:action event="xforms-submit-done" ev:observer="conversion-submission">
                    <xf:action class="fr-set-control-value-action">
                        <xf:var name="control-name" value="''escSinMedidaUnidadFisica''"/>
                        <xf:var name="control-value" value="/conversion/unidad"/>
                    </xf:action>
                    <xf:action class="fr-set-control-value-action">
                        <xf:var name="control-name" value="''escSinMedidaValorTepAnio''"/>
                        <xf:var name="control-value" value="/conversion/valorTEP"/>
                    </xf:action>
                    <xf:action class="fr-set-control-value-action">
                        <xf:var name="control-name" value="''escSinMedidaEmisionCO2''"/>
                        <xf:var name="control-value" value="/conversion/valorEmisionCO2"/>
                    </xf:action>
                </xf:action>
            </xf:action>
            <xf:action id="conversion-action-2-binding">
                <xf:action event="xforms-value-changed" ev:observer="escConMedidaFuenteEnergia-control"
                           if="true()">
                    <xf:send submission="conversion2-submission"/>
                </xf:action>
                <xf:action event="xforms-submit" ev:observer="conversion2-submission">
                    <xf:var name="request-instance-name" value="''conversion2-instance''"/>
                    <xf:action/>
                </xf:action>
                <xf:action event="xforms-submit-done" ev:observer="conversion2-submission">
                    <xf:action class="fr-set-control-value-action">
                        <xf:var name="control-name" value="''escConMedidaUnidadFisica''"/>
                        <xf:var name="control-value" value="/conversion/unidad"/>
                    </xf:action>
                    <xf:action class="fr-set-control-value-action">
                        <xf:var name="control-name" value="''escConMedidaValorTepAnio''"/>
                        <xf:var name="control-value" value="/conversion/valorTEP"/>
                    </xf:action>
                    <xf:action class="fr-set-control-value-action">
                        <xf:var name="control-name" value="''escConMedidaEmisionCO2''"/>
                        <xf:var name="control-value" value="/conversion/valorEmisionCO2"/>
                    </xf:action>
                </xf:action>
            </xf:action>
        </xf:model>
   </xh:head>
   <xh:body>
        <fr:view>
            <fr:body xmlns:xbl="http://www.w3.org/ns/xbl" xmlns:p="http://www.orbeon.com/oxf/pipeline"
                     xmlns:oxf="http://www.orbeon.com/oxf/processors">
                <fr:section id="internal-section-control" bind="internal-section-bind">
                    <xf:label ref="$form-resources/internal-section/label"/>
                    <fr:grid id="grid-1-grid">
                        <fr:c y="1" x="1" w="4">
                                <xf:input id="s-control" bind="s-bind">
                                    <xf:label ref="$form-resources/s/label"/>
                                    <xf:hint ref="$form-resources/s/hint"/>
                                    <xf:alert ref="$fr-resources/detail/labels/alert"/>
                                </xf:input>
                            </fr:c>
                        <fr:c y="1" x="5" w="4">
                                <xf:input id="k-control" bind="k-bind">
                                    <xf:label ref="$form-resources/k/label"/>
                                    <xf:hint ref="$form-resources/k/hint"/>
                                    <xf:alert ref="$fr-resources/detail/labels/alert"/>
                                </xf:input>
                            </fr:c>
                        <fr:c y="1" x="9" w="4">
                                <xf:input id="uuid-control" bind="uuid-bind">
                                    <xf:label ref="$form-resources/uuid/label"/>
                                    <xf:hint ref="$form-resources/uuid/hint"/>
                                    <xf:alert ref="$fr-resources/detail/labels/alert"/>
                                </xf:input>
                            </fr:c>
                        <fr:c y="2" x="1" w="4">
                                <xf:input id="oop-control" bind="oop-bind">
                                    <xf:label ref="$form-resources/oop/label"/>
                                    <xf:hint ref="$form-resources/oop/hint"/>
                                    <xf:alert ref="$fr-resources/detail/labels/alert"/>
                                </xf:input>
                            </fr:c>
                        <fr:c y="2" x="5" w="4">
                                <xf:input id="assignmentOop-control" bind="assignmentOop-bind">
                                    <xf:label ref="$form-resources/assignmentOop/label"/>
                                    <xf:hint ref="$form-resources/assignmentOop/hint"/>
                                    <xf:alert ref="$fr-resources/detail/labels/alert"/>                                    
                                </xf:input>
                            </fr:c>
                        <fr:c y="2" x="9" w="4"/>
                    </fr:grid>
                </fr:section>
                <fr:section id="section-11-control" bind="section-11-bind">
                    <xf:label ref="$form-resources/section-11/label"/>
                    <fr:grid id="grid-2-grid">
                        <fr:c y="1" x="1" w="4">
                                <xf:input id="username-control" bind="username-bind">
                                    <xf:label ref="$form-resources/username/label"/>
                                    <xf:hint ref="$form-resources/username/hint"/>
                                    <xf:alert ref="$fr-resources/detail/labels/alert"/>
                                </xf:input>
                            </fr:c>
                        <fr:c y="1" x="5" w="4">
                                <xf:input id="rol-control" bind="rol-bind">
                                    <xf:label ref="$form-resources/rol/label"/>
                                    <xf:hint ref="$form-resources/rol/hint"/>
                                    <xf:alert ref="$fr-resources/detail/labels/alert"/>
                                </xf:input>
                            </fr:c>
                        <fr:c y="1" x="9" w="4">
                                <xf:input id="processId-control" bind="processId-bind">
                                    <xf:label ref="$form-resources/processId/label"/>
                                    <xf:hint ref="$form-resources/processId/hint"/>
                                    <xf:alert ref="$fr-resources/detail/labels/alert"/>
                                </xf:input>
                            </fr:c>
                    </fr:grid>
                </fr:section>
                <fr:section id="section-1-section" bind="section-1-bind" repeat="content" min="1"
                            template="instance(''section-1-template'')"
                            apply-defaults="true"
                            fb:initial-iterations="first">
                    <xf:label ref="$form-resources/section-1/label"/>
                    <fr:grid id="grid-5-grid">
                        <fr:c x="1" y="1" w="12">
                            <xf:select1 id="escSinMedidaUsoPrincipal-control" bind="escSinMedidaUsoPrincipal-bind"
                                        class="fr-summary fr-search"
                                        appearance="dropdown">
                                <xf:label ref="$form-resources/escSinMedidaUsoPrincipal/label"/>
                                <xf:hint ref="$form-resources/escSinMedidaUsoPrincipal/hint"/>
                                <xf:alert ref="$fr-resources/detail/labels/alert"/>
                                <xf:itemset ref="$form-resources/escSinMedidaUsoPrincipal/item">
                                    <xf:label ref="label"/>
                                    <xf:value ref="value"/>
                                </xf:itemset>
                            </xf:select1>
                        </fr:c>
                    </fr:grid>
                    <fr:grid id="grid-6-grid">
                        <fr:c x="1" y="1" w="6">
                            <fr:date xmlns:map="http://www.w3.org/2005/xpath-functions/map"
                                     xmlns:array="http://www.w3.org/2005/xpath-functions/array"
                                     id="escSinMedidaFechaInicioOperacion-control"
                                     bind="escSinMedidaFechaInicioOperacion-bind">
                                <xf:label ref="$form-resources/escSinMedidaFechaInicioOperacion/label"/>
                                <xf:hint ref="$form-resources/escSinMedidaFechaInicioOperacion/hint"/>
                                <xf:alert ref="$fr-resources/detail/labels/alert"/>
                            </fr:date>
                        </fr:c>
                        <fr:c x="7" y="1" w="6">
                            <fr:yesno-input xmlns="http://orbeon.org/oxf/xml/form-builder"
                                            xmlns:xxbl="http://orbeon.org/oxf/xml/xbl"
                                            id="escSinMedidaEsOperativa-control"
                                            bind="escSinMedidaEsOperativa-bind"
                                            class="fr-summary fr-search">
                                <xf:label ref="$form-resources/escSinMedidaEsOperativa/label"/>
                                <xf:hint ref="$form-resources/escSinMedidaEsOperativa/hint"/>
                                <xf:alert ref="$fr-resources/detail/labels/alert"/>
                            </fr:yesno-input>
                        </fr:c>
                        <fr:c x="1" y="2" w="6">
                            <xf:select1 id="escSinMedidaMoneda-control" bind="escSinMedidaMoneda-bind"
                                        appearance="dropdown"
                                        class="fr-summary fr-search">
                                <xf:label ref="$form-resources/escSinMedidaMoneda/label"/>
                                <xf:hint ref="$form-resources/escSinMedidaMoneda/hint"/>
                                <xf:alert ref="$fr-resources/detail/labels/alert"/>
                                <xf:itemset ref="$form-resources/escSinMedidaMoneda/item">
                                    <xf:label ref="label"/>
                                    <xf:value ref="value"/>
                                </xf:itemset>
                            </xf:select1>
                        </fr:c>
                        <fr:c x="7" y="2" w="6">
                            <fr:number id="escSinMedidaInversionTotal-control" bind="escSinMedidaInversionTotal-bind">
                                <xf:label ref="$form-resources/escSinMedidaInversionTotal/label"/>
                                <xf:hint ref="$form-resources/escSinMedidaInversionTotal/hint"/>
                                <xf:alert ref="$fr-resources/detail/labels/alert"/>
                            </fr:number>
                        </fr:c>
                        <fr:c x="1" y="3" w="6">
                            <fr:number id="escSinMedidaVidaUtil-control" bind="escSinMedidaVidaUtil-bind">
                                <xf:label ref="$form-resources/escSinMedidaVidaUtil/label"/>
                                <xf:hint ref="$form-resources/escSinMedidaVidaUtil/hint"/>
                                <xf:alert ref="$fr-resources/detail/labels/alert"/>
                            </fr:number>
                        </fr:c>
                        <fr:c x="7" y="3" w="6"/>
                    </fr:grid>
                    <fr:section id="section-2-section" bind="section-2-bind" repeat="content" min="1"
                                template="instance(''section-2-template'')"
                                apply-defaults="true"
                                fb:initial-iterations="first">
                        <xf:label ref="$form-resources/section-2/label"/>
                        <fr:grid id="grid-7-grid">
                            <fr:c x="1" y="1" w="6">
                                <xf:select1 id="escSinMedidaFuenteEnergia-control" bind="escSinMedidaFuenteEnergia-bind"
                                            appearance="dropdown"
                                            class="fr-summary fr-search">
                                    <xf:label ref="$form-resources/escSinMedidaFuenteEnergia/label"/>
                                    <xf:hint ref="$form-resources/escSinMedidaFuenteEnergia/hint"/>
                                    <xf:alert ref="$fr-resources/detail/labels/alert"/>
                                    <xf:itemset ref="$form-resources/escSinMedidaFuenteEnergia/item">
                                        <xf:label ref="label"/>
                                        <xf:value ref="value"/>
                                    </xf:itemset>
                                </xf:select1>
                            </fr:c>
                            <fr:c x="7" y="1" w="6">
                                <xf:select1 id="escConMedidaFuenteEnergia-control" bind="escConMedidaFuenteEnergia-bind"
                                            appearance="dropdown"
                                            class="fr-summary fr-search">
                                    <xf:label ref="$form-resources/escConMedidaFuenteEnergia/label"/>
                                    <xf:hint ref="$form-resources/escConMedidaFuenteEnergia/hint"/>
                                    <xf:alert ref="$fr-resources/detail/labels/alert"/>
                                    <xf:itemset ref="$form-resources/escConMedidaFuenteEnergia/item">
                                        <xf:label ref="label"/>
                                        <xf:value ref="value"/>
                                    </xf:itemset>
                                </xf:select1>
                            </fr:c>
                            <fr:c x="1" y="2" w="6">
                                <fr:number id="escSinMedidaPrecioEnergetico-control"
                                           bind="escSinMedidaPrecioEnergetico-bind">
                                    <xf:label ref="$form-resources/escSinMedidaPrecioEnergetico/label"/>
                                    <xf:hint ref="$form-resources/escSinMedidaPrecioEnergetico/hint"/>
                                    <xf:alert ref="$fr-resources/detail/labels/alert"/>
                                </fr:number>
                            </fr:c>
                            <fr:c x="7" y="2" w="6">
                                <fr:number id="escConMedidaPrecioEnergetico-control"
                                           bind="escConMedidaPrecioEnergetico-bind">
                                    <xf:label ref="$form-resources/escConMedidaPrecioEnergetico/label"/>
                                    <xf:hint ref="$form-resources/escConMedidaPrecioEnergetico/hint"/>
                                    <xf:alert ref="$fr-resources/detail/labels/alert"/>
                                </fr:number>
                            </fr:c>
                            <fr:c x="1" y="3" w="6">
                                <xf:input id="escSinMedidaUyuUnidadFisica-control"
                                          bind="escSinMedidaUyuUnidadFisica-bind">
                                    <xf:label ref="$form-resources/escSinMedidaUyuUnidadFisica/label"/>
                                    <xf:hint ref="$form-resources/escSinMedidaUyuUnidadFisica/hint"/>
                                    <xf:alert ref="$fr-resources/detail/labels/alert"/>
                                </xf:input>
                            </fr:c>
                            <fr:c x="7" y="3" w="6">
                                <xf:input id="escConMedidaUyuUnidadFisica-control"
                                          bind="escConMedidaUyuUnidadFisica-bind">
                                    <xf:label ref="$form-resources/escConMedidaUyuUnidadFisica/label"/>
                                    <xf:hint ref="$form-resources/escConMedidaUyuUnidadFisica/hint"/>
                                    <xf:alert ref="$fr-resources/detail/labels/alert"/>
                                </xf:input>
                            </fr:c>
                            <fr:c x="1" y="4" w="6">
                                <fr:number id="escSinMedidaConsumoEnergia-control" bind="escSinMedidaConsumoEnergia-bind">
                                    <xf:label ref="$form-resources/escSinMedidaConsumoEnergia/label"/>
                                    <xf:hint ref="$form-resources/escSinMedidaConsumoEnergia/hint"/>
                                    <xf:alert ref="$fr-resources/detail/labels/alert"/>
                                </fr:number>
                            </fr:c>
                            <fr:c x="7" y="4" w="6">
                                <fr:number id="escConMedidaConsumoEnergia-control" bind="escConMedidaConsumoEnergia-bind">
                                    <xf:label ref="$form-resources/escConMedidaConsumoEnergia/label"/>
                                    <xf:hint ref="$form-resources/escConMedidaConsumoEnergia/hint"/>
                                    <xf:alert ref="$fr-resources/detail/labels/alert"/>
                                </fr:number>
                            </fr:c>
                            <fr:c x="1" y="5" w="6">
                                <xf:input id="escSinMedidaUnidadFisica-control" bind="escSinMedidaUnidadFisica-bind">
                                    <xf:label ref="$form-resources/escSinMedidaUnidadFisica/label"/>
                                    <xf:hint ref="$form-resources/escSinMedidaUnidadFisica/hint"/>
                                    <xf:alert ref="$fr-resources/detail/labels/alert"/>
                                </xf:input>
                            </fr:c>
                            <fr:c x="7" y="5" w="6">
                                <xf:input id="escConMedidaUnidadFisica-control" bind="escConMedidaUnidadFisica-bind">
                                    <xf:label ref="$form-resources/escConMedidaUnidadFisica/label"/>
                                    <xf:hint ref="$form-resources/escConMedidaUnidadFisica/hint"/>
                                    <xf:alert ref="$fr-resources/detail/labels/alert"/>
                                </xf:input>
                            </fr:c>
                            <fr:c x="1" y="6" w="6">
                                <fr:number id="escSinMedidaValorTepAnio-control" bind="escSinMedidaValorTepAnio-bind">
                                    <xf:label ref="$form-resources/escSinMedidaValorTepAnio/label"/>
                                    <xf:hint ref="$form-resources/escSinMedidaValorTepAnio/hint"/>
                                    <xf:alert ref="$fr-resources/detail/labels/alert"/>
                                </fr:number>
                            </fr:c>
                            <fr:c x="7" y="6" w="6">
                                <fr:number id="escConMedidaValorTepAnio-control" bind="escConMedidaValorTepAnio-bind">
                                    <xf:label ref="$form-resources/escConMedidaValorTepAnio/label"/>
                                    <xf:hint ref="$form-resources/escConMedidaValorTepAnio/hint"/>
                                    <xf:alert ref="$fr-resources/detail/labels/alert"/>
                                </fr:number>
                            </fr:c>
                            <fr:c x="1" y="7" w="6">
                                <fr:number id="escSinMedidaValorUyu-control" bind="escSinMedidaValorUyu-bind">
                                    <xf:label ref="$form-resources/escSinMedidaValorUyu/label"/>
                                    <xf:hint ref="$form-resources/escSinMedidaValorUyu/hint"/>
                                    <xf:alert ref="$fr-resources/detail/labels/alert"/>
                                </fr:number>
                            </fr:c>
                            <fr:c x="7" y="7" w="6">
                                <fr:number id="escConMedidaValorUyu-control" bind="escConMedidaValorUyu-bind">
                                    <xf:label ref="$form-resources/escConMedidaValorUyu/label"/>
                                    <xf:hint ref="$form-resources/escConMedidaValorUyu/hint"/>
                                    <xf:alert ref="$fr-resources/detail/labels/alert"/>
                                </fr:number>
                            </fr:c>
                            <fr:c x="1" y="8" w="6">
                                <fr:number id="escSinMedidaEmisionCO2-control" bind="escSinMedidaEmisionCO2-bind">
                                    <xf:label ref="$form-resources/escSinMedidaEmisionCO2/label"/>
                                    <xf:hint ref="$form-resources/escSinMedidaEmisionCO2/hint"/>
                                    <xf:alert ref="$fr-resources/detail/labels/alert"/>
                                </fr:number>
                            </fr:c>
                            <fr:c x="7" y="8" w="6">
                                <fr:number id="escConMedidaEmisionCO2-control" bind="escConMedidaEmisionCO2-bind">
                                    <xf:label ref="$form-resources/escConMedidaEmisionCO2/label"/>
                                    <xf:hint ref="$form-resources/escConMedidaEmisionCO2/hint"/>
                                    <xf:alert ref="$fr-resources/detail/labels/alert"/>
                                </fr:number>
                            </fr:c>
                        </fr:grid>
                    </fr:section>
                </fr:section>
            </fr:body>
        </fr:view>
   </xh:body>
</xh:html>'