other
definitionExample

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
         xmlns:fb="http://orbeon.org/oxf/xml/form-builder">
    <xh:head>
        <xh:title>FORMULARIO PARA REALIZAR DENUNCIAS ANTE LA UNIDAD REGULADORA Y DE CONTROL DE DATOS PERSONALES</xh:title>
        <xf:model id="fr-form-model" xxf:expose-xpath-types="true">

            <!-- Main instance -->
            <xf:instance id="fr-form-instance">
                <form>
                    <section-1>
                        <montevideo/>
                        <fechaActual/>
                        
                    </section-1>
                    <section-4>
                        <nombreDenunciante/>
                        <cedulaDenunciante/>
                        <direccionDenunciante/>
                        <ciudadDenunciante/>
                        <deptoDenunciante/>
                        <telDenunciante/>
                        <correoDenunciante/>
                    </section-4>
                    <section-5>
                        <nombreDenunciado/>
                        <cedulaDenunciado/>
                        <direccionDenunciado/>
                        <ciudadDenunciado/>
                        <deptoDenunciado/>
                        <telefonoDenunciado/>
                        <correoDenunciado/>
                    </section-5>
                    <section-21>
                        <detalleDenuncia/>
                    </section-21>
                    <section-7>
                        <firma/>
                        <confirmacionDenuncia/>
                    </section-7>
                </form>
            </xf:instance>

            <!-- Bindings -->
            <xf:bind xmlns:dataModel="java:org.orbeon.oxf.fb.DataModel" id="fr-form-binds"
                     ref="instance(''fr-form-instance'')">
                <xf:bind id="section-1-bind" name="section-1" ref="section-1">
                    <xf:bind name="montevideo" id="montevideo-bind" ref="montevideo" readonly="true()"/>
                    <xf:bind name="fechaActual" id="fechaActual-bind" ref="fechaActual" type="xf:date"
                             readonly="true()"
                             xxf:default="current-date()"/>
                    
                </xf:bind>
                <xf:bind name="section-4" id="section-4-bind" ref="section-4">
                    <xf:bind name="cedulaDenunciante" id="cedulaDenunciante-bind" ref="cedulaDenunciante"/>
                    <xf:bind name="direccionDenunciante" id="direccionDenunciante-bind"
                             ref="direccionDenunciante"/>
                    <xf:bind name="ciudadDenunciante" id="ciudadDenunciante-bind" ref="ciudadDenunciante"/>
                    <xf:bind name="deptoDenunciante" id="deptoDenunciante-bind" ref="deptoDenunciante"/>
                    <xf:bind name="telDenunciante" id="telDenunciante-bind" ref="telDenunciante"/>
                    <xf:bind name="correoDenunciante" id="correoDenunciante-bind" ref="correoDenunciante"/>
                    <xf:bind name="nombreDenunciante" id="nombreDenunciante-bind" ref="nombreDenunciante"/>
                </xf:bind>
                <xf:bind name="section-5" id="section-5-bind" ref="section-5">
                    <xf:bind name="nombreDenunciado" id="nombreDenunciado-bind" ref="nombreDenunciado"/>
                    <xf:bind name="cedulaDenunciado" id="cedulaDenunciado-bind" ref="cedulaDenunciado"/>
                    <xf:bind name="direccionDenunciado" id="direccionDenunciado-bind"
                             ref="direccionDenunciado"/>
                    <xf:bind name="ciudadDenunciado" id="ciudadDenunciado-bind" ref="ciudadDenunciado"/>
                    <xf:bind name="deptoDenunciado" id="deptoDenunciado-bind" ref="deptoDenunciado"/>
                    <xf:bind name="telefonoDenunciado" id="telefonoDenunciado-bind" ref="telefonoDenunciado"/>
                    <xf:bind name="correoDenunciado" id="correoDenunciado-bind" ref="correoDenunciado"/>
                </xf:bind>
                <xf:bind name="section-7" id="section-7-bind" ref="section-7">
                    <xf:bind name="firma" id="firma-bind" ref="firma" readonly="true()"/>
                    <xf:bind name="confirmacionDenuncia" id="confirmacionDenuncia-bind"
                             ref="confirmacionDenuncia"
                             type="xs:boolean"
                             required="true()"/>
                </xf:bind>
                <xf:bind name="section-21" id="section-21-bind" ref="section-21">
                    <xf:bind name="detalleDenuncia" id="detalleDenuncia-bind" ref="detalleDenuncia"/>
                </xf:bind>
            </xf:bind>

            <!-- Metadata -->
            <xf:instance xxf:readonly="true" id="fr-form-metadata">
                <metadata>
                    <application-name>URCDP</application-name>
                    <form-name>Denuncias</form-name>
                    <title xml:lang="en">FORMULARIO PARA REALIZAR DENUNCIAS ANTE LA UNIDAD REGULADORA Y DE CONTROL DE DATOS PERSONALES</title>
                    <description xml:lang="en">Formulario para el ingreso de denuncias de violación de datos personales</description>
                </metadata>
            </xf:instance>

            <!-- Attachments -->
            <xf:instance id="fr-form-attachments">
                <attachments>
                    <css mediatype="text/css" filename="" size=""/>
                    <pdf mediatype="application/pdf" filename="" size=""/>
                </attachments>
            </xf:instance>

            <!-- All form resources -->
            <!-- Dont make readonly by default in case a service modifies the resources -->
            <xf:instance id="fr-form-resources" xxf:readonly="false">
                <resources>
                    <resource xml:lang="en">
                        <firma>
                            <label>Por lo expuesto, SOLICITO se inicien las actuaciones administrativas correspondientes con el objeto de determinar la existencia de una eventual violación a las disposiciones de la Ley N° 18.331 y tomar las medidas que correspondan a derecho.</label>
                            <hint/>
                            <help/>
                            <alert/>
                        </firma>
                        <confirmacionDenuncia>
                            <label>Seleccione esta opción para confirmar la denuncia</label>
                            <hint>Seleccione para confirmar</hint>
                            <help/>
                            <alert/>
                        </confirmacionDenuncia>
                        <detalleDenuncia>
                            <label>De acuerdo con lo previsto en el artículo 34 literal A) de la Ley N° 18.331, de 11 de agosto de 2008 y normas concordantes, pongo en conocimiento de la Unidad Reguladora y de Control de Datos Personales, los siguientes HECHOS:</label>
                            <hint>Ingrese detalle de la denuncia</hint>
                            <help/>
                            <alert/>
                        </detalleDenuncia>
                        <nombreDenunciante>
                            <label>Sr/Sra</label>
                            <hint>Ingrese nombre del denunciante</hint>
                            <help/>
                            <alert/>
                        </nombreDenunciante>
                        <nombreDenunciado>
                            <label>Sr/Sra</label>
                            <hint>Ingrese nombre del denunciado</hint>
                            <help/>
                            <alert/>
                        </nombreDenunciado>
                        <cedulaDenunciado>
                            <label>Cedula de Identidad</label>
                            <hint>Ingrese cedula del denunciado</hint>
                            <help/>
                            <alert/>
                        </cedulaDenunciado>
                        <direccionDenunciado>
                            <label>Dirección</label>
                            <hint>Ingrese dirección del denunciado</hint>
                            <help/>
                            <alert/>
                        </direccionDenunciado>
                        <ciudadDenunciado>
                            <label>Ciudad</label>
                            <hint>Ingrese ciudad del denunciado</hint>
                            <help/>
                            <alert/>
                        </ciudadDenunciado>
                        <deptoDenunciado>
                            <label>Departamento</label>
                            <hint>Seleccione Departamento del denunciado</hint>
                            <help/>
                            <alert/>
                            <item>
                                <label>Montevideo</label>
                                <value>montevideo</value>
                            </item>
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
                                <label>Paysandú</label>
                                <value>paysandu</value>
                            </item>
                            <item>                  
                                <label>Río Negro</label>
                                <value>rio-negro</value>
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
                                <value>san-jose</value>
                            </item>
                            <item>                  
                                <label>Soriano</label>
                                <value>soriano</value>
                            </item>
                            <item>                  
                                <label>Tacuarembó</label>
                                <value>tacuarembo</value>
                            </item>
                            <item>                  
                                <label>Treinta y Tres</label>
                                <value>treinta-y-tres</value>
                            </item>
                        </deptoDenunciado>
                        <telefonoDenunciado>
                            <label>Teléfono</label>
                            <hint>Ingrese teléfono del denunciado</hint>
                            <help/>
                            <alert/>
                        </telefonoDenunciado>
                        <correoDenunciado>
                            <label>Correo Electrónico</label>
                            <hint>Ingrese correo electrónico del denunciado</hint>
                            <help/>
                            <alert/>
                        </correoDenunciado>
                        <cedulaDenunciante>
                            <label>Cedula de Identidad</label>
                            <hint>Ingrese cedula del denunciante</hint>
                            <help/>
                            <alert/>
                        </cedulaDenunciante>
                        <direccionDenunciante>
                            <label>Dirección</label>
                            <hint>Ingrese dirección del denunciante</hint>
                            <help/>
                            <alert/>
                        </direccionDenunciante>
                        <ciudadDenunciante>
                            <label>Ciudad</label>
                            <hint>Ingrese ciudad del denunciante</hint>
                            <help/>
                            <alert/>
                        </ciudadDenunciante>
                        <deptoDenunciante>
                            <label>Departamento</label>
                            <hint>Seleccione Departamento del denunciante</hint>
                            <help/>
                            <alert/>
                            <item>
                                <label>Montevideo</label>
                                <value>montevideo</value>
                            </item>
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
                                <label>Paysandú</label>
                                <value>paysandu</value>
                            </item>
                            <item>                  
                                <label>Río Negro</label>
                                <value>rio-negro</value>
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
                                <value>san-jose</value>
                            </item>
                            <item>                  
                                <label>Soriano</label>
                                <value>soriano</value>
                            </item>
                            <item>                  
                                <label>Tacuarembó</label>
                                <value>tacuarembo</value>
                            </item>
                            <item>                  
                                <label>Treinta y Tres</label>
                                <value>treinta-y-tres</value>
                            </item>
                        </deptoDenunciante>
                        <telDenunciante>
                            <label>Teléfono</label>
                            <hint>Ingrese teléfono del denunciante</hint>
                            <help/>
                            <alert/>
                        </telDenunciante>
                        <correoDenunciante>
                            <label>Correo Electrónico</label>
                            <hint>Ingrese correo electrónico del denunciante</hint>
                            <help/>
                            <alert/>
                        </correoDenunciante>
                        <montevideo>
                            <label>Montevideo</label>
                            <hint>Ciudad de Montevideo</hint>
                            <help/>
                            <alert/>
                        </montevideo>
                        <fechaActual>
                            <label>Fecha Actual</label>
                            <hint>Fecha Actual</hint>
                            <help/>
                            <alert/>
                        </fechaActual>
                        <section-1>
                            <label>Fecha de Ingreso</label>
                            <help/>
                        </section-1>
                        <section-4>
                            <label>Datos del Denunciante</label>
                            <help/>
                        </section-4>
                        <section-5>
                            <label>Datos del Denunciado</label>
                            <help/>
                        </section-5>
                        <section-21>
                            <label>Detalle de la Denuncia</label>
                            <help/>
                        </section-21>
                        <section-7>
                            <label>Firma</label>
                            <help/>
                        </section-7>
                        
                    </resource>
                </resources>
            </xf:instance>

            <!-- Utility instances for services -->
            <xf:instance id="fr-service-request-instance" xxf:exclude-result-prefixes="#all">
                <request/>
            </xf:instance>

            <xf:instance id="fr-service-response-instance" xxf:exclude-result-prefixes="#all">
                <response/>
            </xf:instance>

        </xf:model>
    </xh:head>
    <xh:body>
        <fr:view>
            <fr:body xmlns:xbl="http://www.w3.org/ns/xbl"
                     xmlns:dataModel="java:org.orbeon.oxf.fb.DataModel"
                     xmlns:oxf="http://www.orbeon.com/oxf/processors"
                     xmlns:p="http://www.orbeon.com/oxf/pipeline">
                <fr:section id="section-1-control" bind="section-1-bind">
                    <xf:label ref="$form-resources/section-1/label"/>
                    <xf:help ref="$form-resources/section-1/help"/>
                    <fr:grid>
                        <xh:tr>
                            
                            <xh:td>
                                <xf:output id="montevideo-control" bind="montevideo-bind">
                                    <xf:label ref="$form-resources/montevideo/label"/>
                                    <xf:hint ref="$form-resources/montevideo/hint"/>
                                    <xf:help ref="$form-resources/montevideo/help"/>
                                    <xf:alert ref="$fr-resources/detail/labels/alert"/>
                                </xf:output>
                            </xh:td>
                            <xh:td>
                                <xf:input id="fechaActual-control" bind="fechaActual-bind">
                                    <xf:label ref="$form-resources/fechaActual/label"/>
                                    <xf:hint ref="$form-resources/fechaActual/hint"/>
                                    <xf:help ref="$form-resources/fechaActual/help"/>
                                    <xf:alert ref="$fr-resources/detail/labels/alert"/>
                                </xf:input>
                            </xh:td>
                        </xh:tr>
                    </fr:grid>
                </fr:section>
                <fr:section id="section-4-control" bind="section-4-bind">
                    <xf:label ref="$form-resources/section-4/label"/>
                    <xf:help ref="$form-resources/section-4/help"/>
                    <fr:grid>
                        <xh:tr>
                            <xh:td>
                                <xf:input id="nombreDenunciante-control" bind="nombreDenunciante-bind">
                                    <xf:label ref="$form-resources/nombreDenunciante/label"/>
                                    <xf:hint ref="$form-resources/nombreDenunciante/hint"/>
                                    <xf:help ref="$form-resources/nombreDenunciante/help"/>
                                    <xf:alert ref="$fr-resources/detail/labels/alert"/>
                                </xf:input>
                            </xh:td>
                            <xh:td>
                                <xf:input id="cedulaDenunciante-control" bind="cedulaDenunciante-bind">
                                    <xf:label ref="$form-resources/cedulaDenunciante/label"/>
                                    <xf:hint ref="$form-resources/cedulaDenunciante/hint"/>
                                    <xf:help ref="$form-resources/cedulaDenunciante/help"/>
                                    <xf:alert ref="$fr-resources/detail/labels/alert"/>
                                </xf:input>
                            </xh:td>
                        </xh:tr>
                        <xh:tr>
                            <xh:td>
                                <xf:input id="direccionDenunciante-control" bind="direccionDenunciante-bind">
                                    <xf:label ref="$form-resources/direccionDenunciante/label"/>
                                    <xf:hint ref="$form-resources/direccionDenunciante/hint"/>
                                    <xf:help ref="$form-resources/direccionDenunciante/help"/>
                                    <xf:alert ref="$fr-resources/detail/labels/alert"/>
                                </xf:input>
                            </xh:td>
                            <xh:td/>
                        </xh:tr>
                        <xh:tr>
                            <xh:td>
                                <xf:input id="ciudadDenunciante-control" bind="ciudadDenunciante-bind">
                                    <xf:label ref="$form-resources/ciudadDenunciante/label"/>
                                    <xf:hint ref="$form-resources/ciudadDenunciante/hint"/>
                                    <xf:help ref="$form-resources/ciudadDenunciante/help"/>
                                    <xf:alert ref="$fr-resources/detail/labels/alert"/>
                                </xf:input>
                            </xh:td>
                            <xh:td>
                                <xf:select1 id="deptoDenunciante-control" appearance="minimal" bind="deptoDenunciante-bind">
                                    <xf:label ref="$form-resources/deptoDenunciante/label"/>
                                    <xf:hint ref="$form-resources/deptoDenunciante/hint"/>
                                    <xf:help ref="$form-resources/deptoDenunciante/help"/>
                                    <xf:alert ref="$fr-resources/detail/labels/alert"/>
                                    <xf:item>
                                        <xf:label>[Select...]</xf:label>
                                        <xf:value/>
                                    </xf:item>
                                    <xf:itemset ref="$form-resources/deptoDenunciante/item">
                                        <xf:label ref="label"/>
                                        <xf:value ref="value"/>
                                    </xf:itemset>
                                </xf:select1>
                            </xh:td>
                        </xh:tr>
                        <xh:tr>
                            <xh:td>
                                <xf:input id="telDenunciante-control" bind="telDenunciante-bind">
                                    <xf:label ref="$form-resources/telDenunciante/label"/>
                                    <xf:hint ref="$form-resources/telDenunciante/hint"/>
                                    <xf:help ref="$form-resources/telDenunciante/help"/>
                                    <xf:alert ref="$fr-resources/detail/labels/alert"/>
                                </xf:input>
                            </xh:td>
                            <xh:td>
                                <xf:input id="correoDenunciante-control" bind="correoDenunciante-bind">
                                    <xf:label ref="$form-resources/correoDenunciante/label"/>
                                    <xf:hint ref="$form-resources/correoDenunciante/hint"/>
                                    <xf:help ref="$form-resources/correoDenunciante/help"/>
                                    <xf:alert ref="$fr-resources/detail/labels/alert"/>
                                </xf:input>
                            </xh:td>
                        </xh:tr>
                    </fr:grid>
                </fr:section>
                <fr:section id="section-5-control" bind="section-5-bind">
                    <xf:label ref="$form-resources/section-5/label"/>
                    <xf:help ref="$form-resources/section-5/help"/>
                    <fr:grid>
                        <xh:tr>
                            <xh:td>
                                <xf:input id="nombreDenunciado-control" bind="nombreDenunciado-bind">
                                    <xf:label ref="$form-resources/nombreDenunciado/label"/>
                                    <xf:hint ref="$form-resources/nombreDenunciado/hint"/>
                                    <xf:help ref="$form-resources/nombreDenunciado/help"/>
                                    <xf:alert ref="$fr-resources/detail/labels/alert"/>
                                </xf:input>
                            </xh:td>
                            <xh:td>
                                <xf:input id="cedulaDenunciado-control" bind="cedulaDenunciado-bind">
                                    <xf:label ref="$form-resources/cedulaDenunciado/label"/>
                                    <xf:hint ref="$form-resources/cedulaDenunciado/hint"/>
                                    <xf:help ref="$form-resources/cedulaDenunciado/help"/>
                                    <xf:alert ref="$fr-resources/detail/labels/alert"/>
                                </xf:input>
                            </xh:td>
                        </xh:tr>
                        <xh:tr>
                            <xh:td>
                                <xf:input id="direccionDenunciado-control" bind="direccionDenunciado-bind">
                                    <xf:label ref="$form-resources/direccionDenunciado/label"/>
                                    <xf:hint ref="$form-resources/direccionDenunciado/hint"/>
                                    <xf:help ref="$form-resources/direccionDenunciado/help"/>
                                    <xf:alert ref="$fr-resources/detail/labels/alert"/>
                                </xf:input>
                            </xh:td>
                            <xh:td/>
                        </xh:tr>
                        <xh:tr>
                            <xh:td>
                                <xf:input id="ciudadDenunciado-control" bind="ciudadDenunciado-bind">
                                    <xf:label ref="$form-resources/ciudadDenunciado/label"/>
                                    <xf:hint ref="$form-resources/ciudadDenunciado/hint"/>
                                    <xf:help ref="$form-resources/ciudadDenunciado/help"/>
                                    <xf:alert ref="$fr-resources/detail/labels/alert"/>
                                </xf:input>
                            </xh:td>
                            <xh:td>
                                <xf:select1 id="deptoDenunciado-control" appearance="minimal" bind="deptoDenunciado-bind">
                                    <xf:label ref="$form-resources/deptoDenunciado/label"/>
                                    <xf:hint ref="$form-resources/deptoDenunciado/hint"/>
                                    <xf:help ref="$form-resources/deptoDenunciado/help"/>
                                    <xf:alert ref="$fr-resources/detail/labels/alert"/>
                                    <xf:item>
                                        <xf:label>[Select...]</xf:label>
                                        <xf:value/>
                                    </xf:item>
                                    <xf:itemset ref="$form-resources/deptoDenunciado/item">
                                        <xf:label ref="label"/>
                                        <xf:value ref="value"/>
                                    </xf:itemset>
                                </xf:select1>
                            </xh:td>
                        </xh:tr>
                        <xh:tr>
                            <xh:td>
                                <xf:input id="telefonoDenunciado-control" bind="telefonoDenunciado-bind">
                                    <xf:label ref="$form-resources/telefonoDenunciado/label"/>
                                    <xf:hint ref="$form-resources/telefonoDenunciado/hint"/>
                                    <xf:help ref="$form-resources/telefonoDenunciado/help"/>
                                    <xf:alert ref="$fr-resources/detail/labels/alert"/>
                                </xf:input>
                            </xh:td>
                            <xh:td>
                                <xf:input id="correoDenunciado-control" bind="correoDenunciado-bind">
                                    <xf:label ref="$form-resources/correoDenunciado/label"/>
                                    <xf:hint ref="$form-resources/correoDenunciado/hint"/>
                                    <xf:help ref="$form-resources/correoDenunciado/help"/>
                                    <xf:alert ref="$fr-resources/detail/labels/alert"/>
                                </xf:input>
                            </xh:td>
                        </xh:tr>
                    </fr:grid>
                </fr:section>
                <fr:section id="section-21-control" bind="section-21-bind">
                    <xf:label ref="$form-resources/section-21/label"/>
                    <xf:help ref="$form-resources/section-21/help"/>
                    <fr:grid>
                        <xh:tr>
                            <xh:td>
                                <xf:textarea id="detalleDenuncia-control" bind="detalleDenuncia-bind">
                                    <xf:label ref="$form-resources/detalleDenuncia/label"/>
                                    <xf:hint ref="$form-resources/detalleDenuncia/hint"/>
                                    <xf:help ref="$form-resources/detalleDenuncia/help"/>
                                    <xf:alert ref="$fr-resources/detail/labels/alert"/>
                                </xf:textarea>
                            </xh:td>
                        </xh:tr>
                    </fr:grid>
                </fr:section>
                <fr:section id="section-7-control" bind="section-7-bind">
                    <xf:label ref="$form-resources/section-7/label"/>
                    <xf:help ref="$form-resources/section-7/help"/>
                    <fr:grid>
                        <xh:tr>
                            <xh:td>
                                <xf:output id="firma-control" bind="firma-bind">
                                    <xf:label ref="$form-resources/firma/label"/>
                                    <xf:hint ref="$form-resources/firma/hint"/>
                                    <xf:help ref="$form-resources/firma/help"/>
                                    <xf:alert ref="$fr-resources/detail/labels/alert"/>
                                </xf:output>
                            </xh:td>
                        </xh:tr>
                        <xh:tr>
                            <xh:td>
                                <xf:input id="confirmacionDenuncia-control" bind="confirmacionDenuncia-bind">
                                    <xf:label ref="$form-resources/confirmacionDenuncia/label"/>
                                    <xf:hint ref="$form-resources/confirmacionDenuncia/hint"/>
                                    <xf:help ref="$form-resources/confirmacionDenuncia/help"/>
                                    <xf:alert ref="$fr-resources/detail/labels/alert"/>
                                </xf:input>
                            </xh:td>
                        </xh:tr>
                    </fr:grid>
                </fr:section>
            </fr:body>
        </fr:view>
    </xh:body>
</xh:html>'