data entry mutirole
formDefinition_ue_data_entry

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
        <xh:title>Data Entry</xh:title>
        <xf:model id="fr-form-model" xxf:expose-xpath-types="true">
            <xf:instance id="fr-form-instance" xxf:exclude-result-prefixes="#all" xxf:index="id">
                <form>
                    <internal-section>
                        <grid-1>
                            <s/>
                            <k/>
                            <uuid/>
                            <oop/>
                            <assignmentOop/>
                        </grid-1>
                    </internal-section>
                    <section-11>
                        <grid-2>
                            <username/>
                            <rol/>
                            <processId/>
                        </grid-2>
                    </section-11>
                    <section-12>
                        <grid-3>
                            <option1/>
                            <options2/>
                            <options3/>
                        </grid-3>
                    </section-12>
                </form>
            </xf:instance>            
            <xf:bind id="fr-form-binds" ref="instance(''fr-form-instance'')">
                <xf:bind id="internal-section-bind" name="internal-section" ref="internal-section">
                    <xf:bind id="grid-1-bind" ref="grid-1" name="grid-1">
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
                </xf:bind>
                <xf:bind id="section-11-bind" ref="section-11" name="section-11">
                    <xf:bind id="grid-2-bind" ref="grid-2" name="grid-2">
                        <xf:bind id="username-bind" ref="username" name="username" required="true()"
                                 readonly="true()"/>
                        <xf:bind id="rol-bind" ref="rol" name="rol" required="true()" readonly="true()"/>
                        <xf:bind id="processId-bind" ref="processId" name="processId" required="true()"
                                 readonly="true()"/>
                    </xf:bind>
                </xf:bind>
                <xf:bind id="section-12-bind" ref="section-12" name="section-12">
                    <xf:bind id="grid-3-bind" ref="grid-3" name="grid-3">
                        <xf:bind id="option1-bind" ref="option1" name="option1"/>
                        <xf:bind id="options2-bind" ref="options2" name="options2"/>
                        <xf:bind id="options3-bind" ref="options3" name="options3"/>
                    </xf:bind>
                </xf:bind>
            </xf:bind>
            <xf:instance xxf:readonly="true" id="fr-form-metadata" xxf:exclude-result-prefixes="#all">
                <metadata>
                    <application-name>ue</application-name>
                    <updated-with-version>2020.1.1.202102012142 PE</updated-with-version>
                    <form-name>data-entry</form-name>
                    <title xml:lang="en">Data Entry</title>
                    <description xml:lang="en">Data Entry</description>
                    <title xml:lang="es">Petición de Permiso de Construccion CASA</title>
                    <description xml:lang="es"/>
                    <singleton>false</singleton>
                    <available>false</available>
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
                        <option1>
                            <label>Options 1</label>
                            <hint/>
                            <item>
                                <label>First choice</label>
                                <hint/>
                                <value>1</value>
                            </item>
                            <item>
                                <label>Second choice</label>
                                <hint/>
                                <value>2</value>
                            </item>
                            <item>
                                <label>Third choice</label>
                                <hint/>
                                <value>3</value>
                            </item>
                        </option1>
                        <options2>
                            <label>Options 2</label>
                            <hint/>
                            <item>
                                <label>First choice</label>
                                <value>1</value>
                                <hint/>
                            </item>
                            <item>
                                <label>Second choice</label>
                                <value>2</value>
                                <hint/>
                            </item>
                            <item>
                                <label>Third choice</label>
                                <value>3</value>
                                <hint/>
                            </item>
                        </options2>
                        <options3>
                            <label>Options 3</label>
                            <hint/>
                            <item>
                                <label>First choice</label>
                                <value>1</value>
                                <hint/>
                            </item>
                            <item>
                                <label>Second choice</label>
                                <value>2</value>
                                <hint/>
                            </item>
                            <item>
                                <label>Third choice</label>
                                <value>3</value>
                                <hint/>
                            </item>
                        </options3>
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
                            <label>Data Entry</label>
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
                        <option1>
                            <label/>
                            <hint/>
                            <item>
                                <label>Primera opción</label>
                                <hint/>
                                <value>1</value>
                            </item>
                            <item>
                                <label>Segunda opción</label>
                                <hint/>
                                <value>2</value>
                            </item>
                            <item>
                                <label>Tercera opción</label>
                                <hint/>
                                <value>3</value>
                            </item>
                        </option1>
                        <options2>
                            <label/>
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
                        </options2>
                        <options3>
                            <label/>
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
                        </options3>                        
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
        </xf:model>
   </xh:head>
   <xh:body>
        <fr:view>
            <fr:body xmlns:p="http://www.orbeon.com/oxf/pipeline" xmlns:xbl="http://www.w3.org/ns/xbl"
                     xmlns:oxf="http://www.orbeon.com/oxf/processors">
                <fr:section id="internal-section-control" bind="internal-section-bind">
                    <xf:label ref="$form-resources/internal-section/label"/>
                    <fr:grid id="grid-1-grid" bind="grid-1-bind">
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
                    <fr:grid id="grid-2-grid" bind="grid-2-bind">
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
                    <fr:grid id="grid-3-grid" bind="grid-3-bind">
                        <fr:c y="1" x="1" w="12">
                                <xf:select id="option1-control" appearance="full" bind="option1-bind"
                                       class="fr-summary fr-search">
                                    <xf:label ref="$form-resources/option1/label"/>
                                    <xf:hint ref="$form-resources/option1/hint"/>
                                    <xf:alert ref="$fr-resources/detail/labels/alert"/>
                                    <xf:itemset ref="$form-resources/option1/item">
                                        <xf:label ref="label"/>
                                        <xf:value ref="value"/>
                                        <xf:hint ref="hint"/>
                                    </xf:itemset>
                                </xf:select>
                            </fr:c>
                        <fr:c y="2" x="1" w="12">
                                <xf:select id="options2-control" appearance="full" bind="options2-bind"
                                       class="fr-summary fr-search">
                                    <xf:label ref="$form-resources/options2/label"/>
                                    <xf:hint ref="$form-resources/options2/hint"/>
                                    <xf:alert ref="$fr-resources/detail/labels/alert"/>
                                    <xf:itemset ref="$form-resources/options2/item">
                                        <xf:label ref="label"/>
                                        <xf:value ref="value"/>
                                        <xf:hint ref="hint"/>
                                    </xf:itemset>
                                </xf:select>
                            </fr:c>
                        <fr:c y="3" x="1" w="12">
                                <xf:select id="options3-control" appearance="full" bind="options3-bind">
                                    <xf:label ref="$form-resources/options3/label"/>
                                    <xf:hint ref="$form-resources/options3/hint"/>
                                    <xf:alert ref="$fr-resources/detail/labels/alert"/>
                                    <xf:itemset ref="$form-resources/options3/item">
                                        <xf:label ref="label"/>
                                        <xf:value ref="value"/>
                                        <xf:hint ref="hint"/>
                                    </xf:itemset>
                                </xf:select>
                            </fr:c>
                    </fr:grid>
                </fr:section>
            </fr:body>
        </fr:view>
   </xh:body>
</xh:html>'