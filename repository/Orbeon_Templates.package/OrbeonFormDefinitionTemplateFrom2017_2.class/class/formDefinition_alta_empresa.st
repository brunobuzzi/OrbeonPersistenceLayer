miem
formDefinition_alta_empresa

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
        <xh:title>Alta Empresa</xh:title>
        <xf:model id="fr-form-model" xxf:expose-xpath-types="true">
         <!-- Main instance -->
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
                    <section-12>
                        <empRazonSocial/>
                        <empRut/>
                        <empCIIU/>
                        <empTelefono/>
                        <empFax/>
                        <empDireccion/>
                        <empMail/>
                        <empDepartamento/>
                        <empClasificacion/>
                        <empCertificadoPyme/>
                    </section-12>
                    <section-1>
                        <empCuentaBanco/>
                        <empCuentaSucursal/>
                        <empCuentaTitular/>
                        <empCuentaNumero/>
                        <empCuentaTipo/>
                        <empCuentaMoneda/>
                    </section-1>
                </form>
            </xf:instance>
            <!-- Bindings -->
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
                <xf:bind id="section-12-bind" ref="section-12" name="section-12">
                    <xf:bind id="empRazonSocial-bind" ref="empRazonSocial" name="empRazonSocial"
                             xxf:whitespace="trim"
                             required="true()"/>
                    <xf:bind id="empRut-bind" ref="empRut" name="empRut" xxf:whitespace="trim"
                             required="true()"/>
                    <xf:bind id="empCIIU-bind" ref="empCIIU" name="empCIIU" xxf:whitespace="trim"
                             required="true()"/>
                    <xf:bind id="empTelefono-bind" ref="empTelefono" name="empTelefono"
                             xxf:whitespace="trim"
                             required="true()"/>
                    <xf:bind id="empDepartamento-bind" ref="empDepartamento" name="empDepartamento"
                             xxf:whitespace="trim"
                             required="true()"/>
                    <xf:bind id="empMail-bind" ref="empMail" name="empMail" type="xf:email"
                             xxf:whitespace="trim"
                             required="true()"/>
                    <xf:bind id="empFax-bind" ref="empFax" name="empFax" xxf:whitespace="trim"
                             required="true()"/>
                    <xf:bind id="empDireccion-bind" ref="empDireccion" name="empDireccion"
                             xxf:whitespace="trim"
                             required="true()"/>
                    <xf:bind id="empClasificacion-bind" ref="empClasificacion" name="empClasificacion"
                             xxf:whitespace="trim"/>
                    <xf:bind id="empCertificadoPyme-bind" ref="empCertificadoPyme" name="empCertificadoPyme"
                             type="xs:boolean"
                             required="true()"/>
                </xf:bind>
                <xf:bind id="section-1-bind" ref="section-1" name="section-1">
                    <xf:bind id="empCuentaBanco-bind" ref="empCuentaBanco" name="empCuentaBanco"
                             xxf:whitespace="trim"
                             required="true()"/>
                    <xf:bind id="empCuentaSucursal-bind" ref="empCuentaSucursal" name="empCuentaSucursal"
                             xxf:whitespace="trim"
                             required="true()"
                             type="xs:integer"/>
                    <xf:bind id="empCuentaTitular-bind" ref="empCuentaTitular" name="empCuentaTitular"
                             xxf:whitespace="trim"
                             required="true()"/>
                    <xf:bind id="empCuentaNumero-bind" ref="empCuentaNumero" name="empCuentaNumero"
                             xxf:whitespace="trim"
                             required="true()"
                             type="xs:integer"/>
                    <xf:bind id="empCuentaTipo-bind" ref="empCuentaTipo" name="empCuentaTipo"
                             required="true()"/>
                    <xf:bind id="empCuentaMoneda-bind" ref="empCuentaMoneda" name="empCuentaMoneda"
                             required="true()"/>
                </xf:bind>
            </xf:bind>
            <!-- Metadata -->
         <xf:instance xxf:readonly="true" id="fr-form-metadata" xxf:exclude-result-prefixes="#all">
                <metadata>
                    <application-name>dne</application-name>
                    <form-name>alta-empresa</form-name>
                    <title xml:lang="en">Alta Empresa</title>
                    <description xml:lang="en"/>
                    <title xml:lang="es">Alta Empresa</title>
                    <description xml:lang="es"/>
                </metadata>
            </xf:instance>
            <!-- Attachments -->
         <xf:instance id="fr-form-attachments" xxf:exclude-result-prefixes="#all">
                <attachments>
                    <css mediatype="text/css" filename="" size=""/>
                    <pdf mediatype="application/pdf" filename="" size=""/>
                </attachments>
            </xf:instance>
            <!-- All form resources -->
         <!-- Dont make readonly by default in case a service modifies the resources -->
         <xf:instance id="fr-form-resources" xxf:readonly="false" xxf:exclude-result-prefixes="#all">
                <resources>
                    <resource xml:lang="en">
                        <empCuentaBanco>
                            <label>Banco</label>
                            <hint/>
                        </empCuentaBanco>
                        <empCuentaSucursal>
                            <label>Sucursal</label>
                            <hint/>
                        </empCuentaSucursal>
                        <empCuentaTitular>
                            <label>Titular</label>
                            <hint/>
                        </empCuentaTitular>
                        <empCuentaNumero>
                            <label>Número</label>
                            <hint/>
                        </empCuentaNumero>
                        <empCuentaTipo>
                            <label>Tipo</label>
                            <hint/>
                            <item>
                                <label>Cuenta Corriente</label>
                                <hint/>
                                <value>cuenta-corriente</value>
                            </item>
                            <item>
                                <label>Caja de Ahorro</label>
                                <hint/>
                                <value>caja-de-ahorro</value>
                            </item>
                        </empCuentaTipo>
                        <empCuentaMoneda>
                            <label>Moneda</label>
                            <hint/>
                            <item>
                                <label>USD</label>
                                <hint/>
                                <value>usd</value>
                            </item>
                            <item>
                                <label>UYU</label>
                                <hint/>
                                <value>uyu</value>
                            </item>
                            <item>
                                <label>EUR</label>
                                <hint/>
                                <value>eur</value>
                            </item>
                        </empCuentaMoneda>
                        <empRazonSocial>
                            <label>Razón Social</label>
                            <hint/>
                        </empRazonSocial>
                        <empRut>
                            <label>RUT</label>
                            <hint/>
                        </empRut>
                        <empCIIU>
                            <label>CIIU</label>
                            <hint/>
                        </empCIIU>
                        <empTelefono>
                            <label>Teléfono</label>
                            <hint/>
                        </empTelefono>
                        <empFax>
                            <label>Fax</label>
                            <hint/>
                        </empFax>
                        <empDireccion>
                            <label>Dirección</label>
                            <hint/>
                        </empDireccion>
                        <empMail>
                            <label>Mail</label>
                            <hint/>
                        </empMail>
                        <empDepartamento>
                            <label>Departamento</label>
                            <hint/>
                        </empDepartamento>
                        <empClasificacion>
                            <label>Clasificación</label>
                            <hint/>
                        </empClasificacion>
                        <empCertificadoPyme>
                            <label>Certificado PYME</label>
                            <hint/>
                        </empCertificadoPyme>
                        <section-1>
                            <label>Cuenta Bancaria</label>
                            <help/>
                        </section-1>
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
                        <section-12>
                            <label>Datos de la Empresa</label>
                            <help/>
                        </section-12>
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
                        <empCuentaBanco>
                            <label/>
                            <hint/>
                        </empCuentaBanco>
                        <empCuentaSucursal>
                            <label/>
                            <hint/>
                        </empCuentaSucursal>
                        <empCuentaTitular>
                            <label/>
                            <hint/>
                        </empCuentaTitular>
                        <empCuentaNumero>
                            <label/>
                            <hint/>
                        </empCuentaNumero>
                        <empCuentaTipo>
                            <label/>
                            <hint/>
                            <item>
                                <label/>
                                <hint/>
                                <value>cuenta-corriente</value>
                            </item>
                            <item>
                                <label/>
                                <hint/>
                                <value>caja-de-ahorro</value>
                            </item>
                        </empCuentaTipo>
                        <empCuentaMoneda>
                            <label/>
                            <hint/>
                            <item>
                                <label/>
                                <hint/>
                                <value>usd</value>
                            </item>
                            <item>
                                <label/>
                                <hint/>
                                <value>uyu</value>
                            </item>
                            <item>
                                <label/>
                                <hint/>
                                <value>eur</value>
                            </item>
                        </empCuentaMoneda>
                        <empRazonSocial>
                            <label/>
                            <hint/>
                        </empRazonSocial>
                        <empRut>
                            <label/>
                            <hint/>
                        </empRut>
                        <empCIIU>
                            <label/>
                            <hint/>
                        </empCIIU>
                        <empTelefono>
                            <label/>
                            <hint/>
                        </empTelefono>
                        <empFax>
                            <label/>
                            <hint/>
                        </empFax>
                        <empDireccion>
                            <label/>
                            <hint/>
                        </empDireccion>
                        <empMail>
                            <label/>
                            <hint/>
                        </empMail>
                        <empDepartamento>
                            <label/>
                            <hint/>
                        </empDepartamento>
                        <empClasificacion>
                            <label/>
                            <hint/>
                        </empClasificacion>
                        <empCertificadoPyme>
                            <label/>
                            <hint/>
                        </empCertificadoPyme>
                        <section-1>
                            <label/>
                            <help/>
                        </section-1>
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
                        <section-12>
                            <label/>
                            <help/>
                        </section-12>
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
            <!-- React to event... on control... -->
            <xf:action event="fr-run-form-load-action-after-controls" ev:observer="fr-form-model"
                           if="true()">
               <!-- Service to call -->
               <xf:send submission="security-token-submission"/>            
                </xf:action> 
                <!-- Request actions -->
            <xf:action event="xforms-submit" ev:observer="security-token-submission">
               <!-- Get reference to initial request -->
               <xf:var name="request-instance-name" value="''security-token-instance''" as="xs:string"/>
                    <!-- Copy over to read-write request instance -->
               <xf:insert ref="instance(''fr-service-request-instance'')"
                               origin="saxon:parse(instance($request-instance-name))"/>
                    <!--<xf:insert ref="instance(''fr-service-request-instance'')" origin="instance($request-instance-name)"/>-->
               <!-- Set values if needed -->
               <xf:action context="instance(''fr-service-request-instance'')">
                  <!-- Setvalue actions will be here -->
               </xf:action>
                </xf:action>
                <!-- Response actions -->
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
                    <!-- Response actions will be here -->
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
                <fr:section id="section-12-control" bind="section-12-bind">
                    <xf:label ref="$form-resources/section-12/label"/>
                    <fr:grid id="grid-3-grid">
                        <fr:c y="1" x="1" w="6">
                                <xf:input id="empRazonSocial-control" bind="empRazonSocial-bind">
                                    <xf:label ref="$form-resources/empRazonSocial/label"/>
                                    <xf:hint ref="$form-resources/empRazonSocial/hint"/>
                                    <xf:alert ref="$fr-resources/detail/labels/alert"/>
                                </xf:input>
                            </fr:c>
                        <fr:c y="1" x="7" w="6">
                                <xf:input id="empRut-control" bind="empRut-bind">
                                    <xf:label ref="$form-resources/empRut/label"/>
                                    <xf:hint ref="$form-resources/empRut/hint"/>
                                    <xf:alert ref="$fr-resources/detail/labels/alert"/>
                                </xf:input>
                            </fr:c>
                        <fr:c y="2" x="1" w="6">
                                <xf:input id="empCIIU-control" bind="empCIIU-bind">
                                    <xf:label ref="$form-resources/empCIIU/label"/>
                                    <xf:hint ref="$form-resources/empCIIU/hint"/>
                                    <xf:alert ref="$fr-resources/detail/labels/alert"/>
                                </xf:input>
                            </fr:c>
                        <fr:c y="2" x="7" w="6">
                                <xf:input id="empTelefono-control" bind="empTelefono-bind">
                                    <xf:label ref="$form-resources/empTelefono/label"/>
                                    <xf:hint ref="$form-resources/empTelefono/hint"/>
                                    <xf:alert ref="$fr-resources/detail/labels/alert"/>
                                </xf:input>
                            </fr:c>
                        <fr:c y="3" x="1" w="6">
                                <xf:input id="empFax-control" bind="empFax-bind">
                                    <xf:label ref="$form-resources/empFax/label"/>
                                    <xf:hint ref="$form-resources/empFax/hint"/>
                                    <xf:alert ref="$fr-resources/detail/labels/alert"/>
                                </xf:input>
                            </fr:c>
                        <fr:c y="3" x="7" w="6">
                                <xf:input id="empDireccion-control" bind="empDireccion-bind">
                                    <xf:label ref="$form-resources/empDireccion/label"/>
                                    <xf:hint ref="$form-resources/empDireccion/hint"/>
                                    <xf:alert ref="$fr-resources/detail/labels/alert"/>
                                </xf:input>
                            </fr:c>
                        <fr:c y="4" x="1" w="6">
                                <xf:input id="empMail-control" bind="empMail-bind">
                                    <xf:label ref="$form-resources/empMail/label"/>
                                    <xf:hint ref="$form-resources/empMail/hint"/>
                                    <xf:alert ref="$fr-resources/detail/labels/alert"/>
                                </xf:input>
                            </fr:c>
                        <fr:c y="4" x="7" w="6">
                                <xf:input id="empDepartamento-control" bind="empDepartamento-bind">
                                    <xf:label ref="$form-resources/empDepartamento/label"/>
                                    <xf:hint ref="$form-resources/empDepartamento/hint"/>
                                    <xf:alert ref="$fr-resources/detail/labels/alert"/>
                                </xf:input>
                            </fr:c>
                        <fr:c y="5" x="1" w="6">
                                <xf:input id="empClasificacion-control" bind="empClasificacion-bind">
                                    <xf:label ref="$form-resources/empClasificacion/label"/>
                                    <xf:hint ref="$form-resources/empClasificacion/hint"/>
                                    <xf:alert ref="$fr-resources/detail/labels/alert"/>
                                </xf:input>
                            </fr:c>
                        <fr:c y="5" x="7" w="6">
                                <fr:yesno-input xmlns="http://orbeon.org/oxf/xml/form-builder"
                                            xmlns:xxbl="http://orbeon.org/oxf/xml/xbl"
                                            id="empCertificadoPyme-control"
                                            bind="empCertificadoPyme-bind">
                                    <xf:label ref="$form-resources/empCertificadoPyme/label"/>
                                    <xf:hint ref="$form-resources/empCertificadoPyme/hint"/>
                                    <xf:alert ref="$fr-resources/detail/labels/alert"/>
                                </fr:yesno-input>
                            </fr:c>
                    </fr:grid>
                </fr:section>
                <fr:section id="section-1-section" bind="section-1-bind">
                    <xf:label ref="$form-resources/section-1/label"/>
                    <fr:grid id="grid-4-grid">
                        <fr:c x="1" y="1" w="6">
                            <xf:input id="empCuentaBanco-control" bind="empCuentaBanco-bind">
                                <xf:label ref="$form-resources/empCuentaBanco/label"/>
                                <xf:hint ref="$form-resources/empCuentaBanco/hint"/>
                                <xf:alert ref="$fr-resources/detail/labels/alert"/>
                            </xf:input>
                        </fr:c>
                        <fr:c x="7" y="1" w="6">
                            <fr:number id="empCuentaSucursal-control" bind="empCuentaSucursal-bind">
                                <xf:label ref="$form-resources/empCuentaSucursal/label"/>
                                <xf:hint ref="$form-resources/empCuentaSucursal/hint"/>
                                <xf:alert ref="$fr-resources/detail/labels/alert"/>
                            </fr:number>
                        </fr:c>
                        <fr:c x="1" y="2" w="6">
                            <xf:input id="empCuentaTitular-control" bind="empCuentaTitular-bind">
                                <xf:label ref="$form-resources/empCuentaTitular/label"/>
                                <xf:hint ref="$form-resources/empCuentaTitular/hint"/>
                                <xf:alert ref="$fr-resources/detail/labels/alert"/>
                            </xf:input>
                        </fr:c>
                        <fr:c x="7" y="2" w="6">
                            <fr:number id="empCuentaNumero-control" bind="empCuentaNumero-bind">
                                <xf:label ref="$form-resources/empCuentaNumero/label"/>
                                <xf:hint ref="$form-resources/empCuentaNumero/hint"/>
                                <xf:alert ref="$fr-resources/detail/labels/alert"/>
                            </fr:number>
                        </fr:c>
                        <fr:c x="1" y="3" w="6">
                            <xf:select1 id="empCuentaTipo-control" appearance="full" bind="empCuentaTipo-bind">
                                <xf:label ref="$form-resources/empCuentaTipo/label"/>
                                <xf:hint ref="$form-resources/empCuentaTipo/hint"/>
                                <xf:alert ref="$fr-resources/detail/labels/alert"/>
                                <xf:itemset ref="$form-resources/empCuentaTipo/item">
                                    <xf:label ref="label"/>
                                    <xf:value ref="value"/>
                                    <xf:hint ref="hint"/>
                                </xf:itemset>
                            </xf:select1>
                        </fr:c>
                        <fr:c x="7" y="3" w="6">
                            <xf:select1 id="empCuentaMoneda-control" appearance="full" bind="empCuentaMoneda-bind">
                                <xf:label ref="$form-resources/empCuentaMoneda/label"/>
                                <xf:hint ref="$form-resources/empCuentaMoneda/hint"/>
                                <xf:alert ref="$fr-resources/detail/labels/alert"/>
                                <xf:itemset ref="$form-resources/empCuentaMoneda/item">
                                    <xf:label ref="label"/>
                                    <xf:value ref="value"/>
                                    <xf:hint ref="hint"/>
                                </xf:itemset>
                            </xf:select1>
                        </fr:c>
                    </fr:grid>
                </fr:section>
            </fr:body>
        </fr:view>
   </xh:body>
</xh:html>'