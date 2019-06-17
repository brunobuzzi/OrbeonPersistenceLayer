dashboard process
formDefinition_dashboard_form

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
        <xh:meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <xh:title>Dashboard Form</xh:title>
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
                        <invoiceAmount/>
                        <invoiceTax/>
                        <cost/>
                        <costTax/>
                        <deductible/>
                        <deductibleTax/>
                        <total/>
                        <totalWithTaxes/>
                        <paymentDate/>
                        <confirmed/>
                        <industry/>
                        <directClient/>
                        <country/>
                        <city/>
                    </section-12>
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
                    <xf:bind id="invoiceAmount-bind" ref="invoiceAmount" name="invoiceAmount"
                             required="true()"
                             type="xs:decimal"/>
                    <xf:bind id="invoiceTax-bind" ref="invoiceTax" name="invoiceTax" required="true()"
                             type="xs:decimal"
                             calculate="$invoiceAmount * 0.22"/>
                    <xf:bind id="cost-bind" ref="cost" name="cost" type="xs:decimal" required="true()"/>
                    <xf:bind id="costTax-bind" ref="costTax" name="costTax" required="true()"
                             type="xs:decimal"
                             calculate="$cost * 0.22"/>
                    <xf:bind id="paymentDate-bind" ref="paymentDate" name="paymentDate" type="xs:date"
                             required="true()"/>
                    <xf:bind id="confirmed-bind" ref="confirmed" name="confirmed" required="true()"
                             type="xs:boolean"/>
                    <xf:bind id="deductible-bind" ref="deductible" name="deductible" type="xs:decimal"
                             required="true()"/>
                    <xf:bind id="deductibleTax-bind" ref="deductibleTax" name="deductibleTax"
                             type="xs:decimal"
                             required="true()"
                             calculate="$deductible * 0.1"/>
                    <xf:bind id="country-bind" ref="country" name="country" required="true()"/>
                    <xf:bind id="city-bind" ref="city" name="city" xxf:whitespace="trim" required="true()"/>
                    <xf:bind id="total-bind" ref="total" name="total" type="xf:decimal"
                             calculate="$invoiceAmount + $deductible - $cost"/>
                    <xf:bind id="totalWithTaxes-bind" ref="totalWithTaxes" name="totalWithTaxes"
                             type="xf:decimal"
                             calculate="$invoiceAmount + $invoiceTax + $deductible + $deductibleTax - $cost -$costTax"/>
                    <xf:bind id="industry-bind" ref="industry" name="industry" required="true()"/>
                    <xf:bind id="directClient-bind" ref="directClient" name="directClient" type="xs:boolean"
                             required="true()"/>
                </xf:bind>
            </xf:bind>
            <!-- Metadata -->
         <xf:instance xxf:readonly="true" id="fr-form-metadata" xxf:exclude-result-prefixes="#all">
                <metadata>
                    <application-name>ue</application-name>
                    <form-name>dashboard-form</form-name>
                    <title xml:lang="en">Dashboard Form</title>
                    <description xml:lang="en">Dashboard Form</description>
                    <title xml:lang="es">Petición de Permiso de Construccion CASA</title>
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
                        <invoiceAmount>
                            <label>Invoice Amount</label>
                            <hint/>
                        </invoiceAmount>
                        <invoiceTax>
                            <label>Inovice Tax</label>
                            <hint/>
                        </invoiceTax>
                        <cost>
                            <label>Cost</label>
                            <hint/>
                        </cost>
                        <costTax>
                            <label>Cost Tax</label>
                            <hint/>
                        </costTax>
                        <deductible>
                            <label>Deductible</label>
                            <hint/>
                        </deductible>
                        <deductibleTax>
                            <label>Deductible Tax</label>
                            <hint/>
                        </deductibleTax>
                        <total>
                            <label>Total</label>
                            <hint/>
                        </total>
                        <totalWithTaxes>
                            <label>Total with Taxes</label>
                            <hint/>
                        </totalWithTaxes>
                        <paymentDate>
                            <label>Payment Date</label>
                            <hint/>
                        </paymentDate>
                        <confirmed>
                            <label>Confirmed</label>
                            <hint/>
                            <item>
                                <label>Yes</label>
                                <hint/>
                                <value>yes</value>
                            </item>
                            <item>
                                <label>No</label>
                                <hint/>
                                <value>no</value>
                            </item>
                        </confirmed>
                        <industry>
                            <label>Industry</label>
                            <hint/>
                            <item>
                                <label>First choice</label>
                                <value>1</value>
                            </item>
                            <item>
                                <label>Second choice</label>
                                <value>2</value>
                            </item>
                            <item>
                                <label>Third choice</label>
                                <value>3</value>
                            </item>
                        </industry>
                        <directClient>
                            <label>Direct Client</label>
                            <hint/>
                        </directClient>
                        <country>
                            <label>Country</label>
                            <hint/>
                            <item>
                                <label>Uruguay</label>
                                <value>uruguay</value>
                            </item>
                            <item>
                                <label>Argentina</label>
                                <value>argentina</value>
                            </item>
                            <item>
                                <label>Brasil</label>
                                <value>brasil</value>
                            </item>
                        </country>
                        <city>
                            <label>City</label>
                            <hint/>
                        </city>
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
                            <label>Invoice Data</label>
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
                        <invoiceAmount>
                            <label/>
                            <hint/>
                        </invoiceAmount>
                        <invoiceTax>
                            <label/>
                            <hint/>
                        </invoiceTax>
                        <cost>
                            <label/>
                            <hint/>
                        </cost>
                        <costTax>
                            <label/>
                            <hint/>
                        </costTax>
                        <deductible>
                            <label/>
                            <hint/>
                        </deductible>
                        <deductibleTax>
                            <label/>
                            <hint/>
                        </deductibleTax>
                        <total>
                            <label/>
                            <hint/>
                        </total>
                        <totalWithTaxes>
                            <label/>
                            <hint/>
                        </totalWithTaxes>
                        <paymentDate>
                            <label/>
                            <hint/>
                        </paymentDate>
                        <confirmed>
                            <label/>
                            <hint/>
                            <item>
                                <label>Masculino</label>
                                <hint/>
                                <value>yes</value>
                            </item>
                            <item>
                                <label>Femenino</label>
                                <hint/>
                                <value>no</value>
                            </item>
                        </confirmed>
                        <industry>
                            <label/>
                            <hint/>
                            <item>
                                <label>Primera opción</label>
                                <value>1</value>
                            </item>
                            <item>
                                <label>Segunda opción</label>
                                <value>2</value>
                            </item>
                            <item>
                                <label>Tercera opción</label>
                                <value>3</value>
                            </item>
                        </industry>
                        <directClient>
                            <label/>
                            <hint/>
                        </directClient>
                        <country>
                            <label/>
                            <hint/>
                            <item>
                                <label>Uruguay</label>
                                <value>uruguay</value>
                            </item>
                            <item>
                                <label>Argentina</label>
                                <value>argentina</value>
                            </item>
                            <item>
                                <label>Brasil</label>
                                <value>brasil</value>
                            </item>
                        </country>
                        <city>
                            <label/>
                            <hint/>
                        </city>
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
            <fr:body xmlns:p="http://www.orbeon.com/oxf/pipeline" xmlns:xbl="http://www.w3.org/ns/xbl"
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
                                <fr:number id="invoiceAmount-control" bind="invoiceAmount-bind">
                                    <xf:label ref="$form-resources/invoiceAmount/label"/>
                                    <xf:hint ref="$form-resources/invoiceAmount/hint"/>
                                <xf:alert ref="$fr-resources/detail/labels/alert"/>
                                </fr:number>
                            </fr:c>
                        <fr:c y="1" x="7" w="6">
                                <fr:number id="invoiceTax-control" bind="invoiceTax-bind">
                                    <xf:label ref="$form-resources/invoiceTax/label"/>
                                    <xf:hint ref="$form-resources/invoiceTax/hint"/>
                                <xf:alert ref="$fr-resources/detail/labels/alert"/>
                                </fr:number>
                            </fr:c>
                        <fr:c y="2" x="1" w="6">
                                <fr:number id="cost-control" bind="cost-bind">
                                    <xf:label ref="$form-resources/cost/label"/>
                                    <xf:hint ref="$form-resources/cost/hint"/>
                                <xf:alert ref="$fr-resources/detail/labels/alert"/>
                                </fr:number>
                            </fr:c>
                        <fr:c y="2" x="7" w="6">
                                <fr:number id="costTax-control" bind="costTax-bind">
                                    <xf:label ref="$form-resources/costTax/label"/>
                                    <xf:hint ref="$form-resources/costTax/hint"/>
                                <xf:alert ref="$fr-resources/detail/labels/alert"/>
                                </fr:number>
                            </fr:c>
                        <fr:c x="1" y="3" w="6">
                            <fr:number id="deductible-control" bind="deductible-bind">
                                    <xf:label ref="$form-resources/deductible/label"/>
                                    <xf:hint ref="$form-resources/deductible/hint"/>
                                <xf:alert ref="$fr-resources/detail/labels/alert"/>
                                </fr:number>
                        </fr:c>
                        <fr:c x="7" y="3" w="6">
                            <fr:number id="deductibleTax-control" bind="deductibleTax-bind">
                                    <xf:label ref="$form-resources/deductibleTax/label"/>
                                    <xf:hint ref="$form-resources/deductibleTax/hint"/>
                                <xf:alert ref="$fr-resources/detail/labels/alert"/>
                                </fr:number>
                        </fr:c>
                        <fr:c x="1" y="4" w="6">
                            <fr:number xmlns="http://orbeon.org/oxf/xml/form-builder"
                                       xmlns:xxbl="http://orbeon.org/oxf/xml/xbl"
                                       xmlns:NumberSupport="java:org.orbeon.xbl.NumberSupportJava"
                                       id="total-control"
                                       bind="total-bind">
                                <xf:label ref="$form-resources/total/label"/>
                                <xf:hint ref="$form-resources/total/hint"/>
                                <xf:alert ref="$fr-resources/detail/labels/alert"/>
                            </fr:number>
                        </fr:c>
                        <fr:c x="7" y="4" w="6">
                            <fr:number xmlns="http://orbeon.org/oxf/xml/form-builder"
                                       xmlns:xxbl="http://orbeon.org/oxf/xml/xbl"
                                       xmlns:NumberSupport="java:org.orbeon.xbl.NumberSupportJava"
                                       id="totalWithTaxes-control"
                                       bind="totalWithTaxes-bind">
                                <xf:label ref="$form-resources/totalWithTaxes/label"/>
                                <xf:hint ref="$form-resources/totalWithTaxes/hint"/>
                                <xf:alert ref="$fr-resources/detail/labels/alert"/>
                            </fr:number>
                        </fr:c>
                        <fr:c y="5" x="1" w="6">
                                <fr:date xmlns:map="http://www.w3.org/2005/xpath-functions/map"
                                     xmlns:array="http://www.w3.org/2005/xpath-functions/array"
                                     id="paymentDate-control"
                                     bind="paymentDate-bind">
                                    <xf:label ref="$form-resources/paymentDate/label"/>
                                    <xf:hint ref="$form-resources/paymentDate/hint"/>
                                <xf:alert ref="$fr-resources/detail/labels/alert"/>
                                </fr:date>
                            </fr:c>
                        <fr:c y="5" x="7" w="6">
                                <xf:select1 id="confirmed-control" appearance="full" bind="confirmed-bind">
                                    <xf:label ref="$form-resources/confirmed/label"/>
                                    <xf:hint ref="$form-resources/confirmed/hint"/>
                                <xf:alert ref="$fr-resources/detail/labels/alert"/>
                                
                                    <xf:itemset ref="$form-resources/confirmed/item">
                                        <xf:label ref="label"/>
                                        <xf:value ref="value"/>
                                        <xf:hint ref="hint"/>
                                    </xf:itemset>
                                </xf:select1>
                            </fr:c>
                        <fr:c x="1" y="6" w="6">
                            <xf:select1 id="industry-control" bind="industry-bind" appearance="dropdown"
                                        class="fr-summary fr-search">
                                <xf:label ref="$form-resources/industry/label"/>
                                <xf:hint ref="$form-resources/industry/hint"/>
                                <xf:alert ref="$fr-resources/detail/labels/alert"/>
                                <xf:itemset ref="$form-resources/industry/item">
                                    <xf:label ref="label"/>
                                    <xf:value ref="value"/>
                                </xf:itemset>
                            </xf:select1>
                        </fr:c>
                        <fr:c x="7" y="6" w="6">
                            <fr:yesno-input xmlns="http://orbeon.org/oxf/xml/form-builder"
                                            xmlns:xxbl="http://orbeon.org/oxf/xml/xbl"
                                            id="directClient-control"
                                            bind="directClient-bind"
                                            class="fr-summary fr-search">
                                <xf:label ref="$form-resources/directClient/label"/>
                                <xf:hint ref="$form-resources/directClient/hint"/>
                                <xf:alert ref="$fr-resources/detail/labels/alert"/>
                            </fr:yesno-input>
                        </fr:c>
                        <fr:c y="7" x="1" w="6">
                            <xf:select1 id="country-control" bind="country-bind" class="fr-summary fr-search"
                                        appearance="dropdown">
                                    <xf:label ref="$form-resources/country/label"/>
                                    <xf:hint ref="$form-resources/country/hint"/>
                                <xf:alert ref="$fr-resources/detail/labels/alert"/>
                                    <xf:itemset ref="$form-resources/country/item">
                                        <xf:label ref="label"/>
                                        <xf:value ref="value"/>
                                    </xf:itemset>
                                </xf:select1>
                            </fr:c>
                        <fr:c y="7" x="7" w="6">
                            <xf:input id="city-control" bind="city-bind">
                                <xf:label ref="$form-resources/city/label"/>
                                <xf:hint ref="$form-resources/city/hint"/>
                                <xf:alert ref="$fr-resources/detail/labels/alert"/>
                            </xf:input>
                            </fr:c>
                    </fr:grid>
                </fr:section>
            </fr:body>
        </fr:view>
   </xh:body>
</xh:html>'