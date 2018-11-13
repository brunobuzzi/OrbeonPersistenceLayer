visa process
formDefinition_applicant_home_office_report

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
        <xh:title>Applicant Home Office Report</xh:title>
        <xf:model id="fr-form-model" xxf:expose-xpath-types="true">
         <!-- Main instance -->
         <xf:instance id="fr-form-instance" xxf:exclude-result-prefixes="#all">
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
                        <citizenName/>
                        <citizenSurname/>
                        <originCountry/>
                        <citizenId/>
                    </section-12>
                    <section-16>
                        <grid-17>
                            <grid-17-iteration>
                                <offenseDate/>
                                <offenseType/>
                                <offenseExpiration/>
                            </grid-17-iteration>
                        </grid-17>
                        
                        
                    </section-16>
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
                    <xf:bind id="citizenName-bind" ref="citizenName" name="citizenName" required="true()"
                             readonly="true()"/>
                    <xf:bind id="citizenSurname-bind" ref="citizenSurname" name="citizenSurname"
                             required="true()"
                             readonly="true()"/>
                    <xf:bind id="originCountry-bind" ref="originCountry" name="originCountry"
                             required="true()"
                             readonly="true()"/>
                    <xf:bind id="citizenId-bind" ref="citizenId" name="citizenId" required="true()"
                             type="xs:positiveInteger"
                             readonly="true()"/>
                </xf:bind>
                <xf:bind id="section-16-bind" ref="section-16" name="section-16">
                    <xf:bind id="grid-17-bind" ref="grid-17" name="grid-17">
                        <xf:bind id="grid-17-iteration-bind" ref="grid-17-iteration" name="grid-17-iteration">
                            <xf:bind id="offenseDate-bind" ref="offenseDate" name="offenseDate" type="xf:date"/>
                            <xf:bind id="offenseType-bind" ref="offenseType" name="offenseType"/>
                            <xf:bind id="offenseExpiration-bind" ref="offenseExpiration" name="offenseExpiration"
                                     type="xf:date"/>
                        </xf:bind>
                    </xf:bind>
                    
                    
                </xf:bind>
            </xf:bind>
            <!-- Metadata -->
         <xf:instance xxf:readonly="true" id="fr-form-metadata" xxf:exclude-result-prefixes="#all">
                <metadata>
                    <application-name>ue</application-name>
                    <form-name>applicant-home-office-report</form-name>
                    <title xml:lang="en">Applicant Home Office Report</title>
                    <description xml:lang="en">Applicant Home Office Report</description>
                    <title xml:lang="es">PeticiÃ³n de Permiso de Construccion CASA</title>
                    <description xml:lang="es"/>
                    <singleton>false</singleton>
                    <migration version="4.8.0">[{ "path": "section-16/grid-17", "iteration-name": "grid-17-iteration" }]</migration>
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
                        <offenseDate>
                            <label>Offense Date</label>
                            <hint/>
                        </offenseDate>
                        <offenseType>
                            <label>Offense Type</label>
                            <hint/>
                            <item>
                                <label>Violent</label>
                        
                                <value>violent</value>
                            </item>
                            <item>
                                <label>Non Violent Robbery</label>
                        
                                <value>robbery</value>
                            </item>
                            <item>
                                <label>Gender Offense</label>
                        
                                <value>gender-offense</value>
                            </item>
                            <item>
                                <label>Public Missbehavior</label>
                        
                                <value>public-missbehavior</value>
                            </item>
                        </offenseType>
                        <offenseExpiration>
                            <label>Offense Expiration</label>
                            <hint/>
                        </offenseExpiration>
                        
                        
                        <citizenName>
                            <label>Name</label>
                            <hint/>
                        </citizenName>
                        <citizenSurname>
                            <label>Surname</label>
                            <hint/>
                        </citizenSurname>
                        <originCountry>
                            <label>Origin Country</label>
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
                        </originCountry>
                        <citizenId>
                            <label>Personal Id Number</label>
                            <hint/>
                        </citizenId>
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
                            <label>Citizen Data</label>
                            <help/>
                        </section-12>
                        <section-16>
                            <label>Home Office Record</label>
                            <help/>
                        </section-16>
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
                        <offenseDate>
                            <label/>
                            <hint/>
                        </offenseDate>
                        <offenseType>
                            <label/>
                            <hint/>
                            <item>
                                <label>Violent</label>
                        
                                <value>violent</value>
                            </item>
                            <item>
                                <label>Robbery</label>
                        
                                <value>robbery</value>
                            </item>
                            <item>
                                <label>Gender Offense</label>
                        
                                <value>gender-offense</value>
                            </item>
                            <item>
                                <label>Public Missbehavior</label>
                        
                                <value>public-missbehavior</value>
                            </item>
                        </offenseType>
                        <offenseExpiration>
                            <label/>
                            <hint/>
                        </offenseExpiration>
                        
                        
                        <citizenName>
                            <label/>
                            <hint/>
                        </citizenName>
                        <citizenSurname>
                            <label/>
                            <hint/>
                        </citizenSurname>
                        <originCountry>
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
                        </originCountry>
                        <citizenId>
                            <label/>
                            <hint/>
                        </citizenId>
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
                        <section-16>
                            <label/>
                            <help/>
                        </section-16>
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
            <!-- Utility instances for services -->
         <xf:instance id="fr-service-request-instance" xxf:exclude-result-prefixes="#all">
                <request/>
            </xf:instance>
            <xf:instance id="fr-service-response-instance" xxf:exclude-result-prefixes="#all">
                <response/>
            </xf:instance>
            <xf:instance id="security-token-instance" class="fr-service"
                         xxf:exclude-result-prefixes="#all">
                <body xmlns:secure="java:org.orbeon.oxf.util.SecureUtils"
                      xmlns:frf="java:org.orbeon.oxf.fr.FormRunner"
                      xmlns:p="http://www.orbeon.com/oxf/pipeline"
                      xmlns:fbf="java:org.orbeon.oxf.fb.FormBuilder">&lt;uuid&gt;&lt;/uuid&gt;</body>
            </xf:instance>
            <xf:instance xxf:readonly="true" id="grid-17-template">
                <grid-17-iteration>
                    <offenseDate/>
                    <offenseType/>
                    <offenseExpiration/>
                </grid-17-iteration>
                
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
            <xf:action ev:event="xforms-ready" ev:observer="fr-form-model" if="true()">
               <!-- Service to call -->
               <xf:send submission="security-token-submission"/>            
                </xf:action> 
                <!-- Request actions -->
            <xf:action ev:event="xforms-submit" ev:observer="security-token-submission">
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
            <xf:action ev:event="xforms-submit-done" ev:observer="security-token-submission"
                           context="instance(''fr-service-response-instance'')">
                    <xf:action class="fr-set-control-value-action">
                        <xf:var name="control-name" value="''username''"/>
                        <xf:var name="control-value" value="/result/username"/>
                    </xf:action>
                    <xf:action class="fr-set-control-value-action">
                        <xf:var name="control-name" value="''citizenName''"/>
                        <xf:var name="control-value" value="/result/citizenName"/>
                    </xf:action>
                    <xf:action class="fr-set-control-value-action">
                        <xf:var name="control-name" value="''citizenSurname''"/>
                        <xf:var name="control-value" value="/result/citizenSurname"/>
                    </xf:action>
                    <xf:action class="fr-set-control-value-action">
                        <xf:var name="control-name" value="''originCountry''"/>
                        <xf:var name="control-value" value="/result/originCountry"/>
                    </xf:action>
                    <xf:action class="fr-set-control-value-action">
                        <xf:var name="control-name" value="''citizenId''"/>
                        <xf:var name="control-value" value="/result/citizenId"/>
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
            <fr:body xmlns:xbl="http://www.w3.org/ns/xbl"
                     xmlns:oxf="http://www.orbeon.com/oxf/processors"
                     xmlns:p="http://www.orbeon.com/oxf/pipeline">
                <fr:section id="internal-section-control" bind="internal-section-bind">
                    <xf:label ref="$form-resources/internal-section/label"/>
                    <fr:grid>
                        <xh:tr>
                            <xh:td>
                                <xf:input id="s-control" bind="s-bind">
                                    <xf:label ref="$form-resources/s/label"/>
                                    <xf:hint ref="$form-resources/s/hint"/>
                                    <xf:alert ref="$fr-resources/detail/labels/alert"/>
                                </xf:input>
                            </xh:td>
                            <xh:td>
                                <xf:input id="k-control" bind="k-bind">
                                    <xf:label ref="$form-resources/k/label"/>
                                    <xf:hint ref="$form-resources/k/hint"/>
                                    <xf:alert ref="$fr-resources/detail/labels/alert"/>
                                </xf:input>
                            </xh:td>
                            <xh:td>
                                <xf:input id="uuid-control" bind="uuid-bind">
                                    <xf:label ref="$form-resources/uuid/label"/>
                                    <xf:hint ref="$form-resources/uuid/hint"/>
                                    <xf:alert ref="$fr-resources/detail/labels/alert"/>
                                </xf:input>
                            </xh:td>
                        </xh:tr>
                        <xh:tr>
                            <xh:td>
                                <xf:input id="oop-control" bind="oop-bind">
                                    <xf:label ref="$form-resources/oop/label"/>
                                    <xf:hint ref="$form-resources/oop/hint"/>
                                    <xf:alert ref="$fr-resources/detail/labels/alert"/>
                                </xf:input>
                            </xh:td>
                            <xh:td>
                                <xf:input id="assignmentOop-control" bind="assignmentOop-bind">
                                    <xf:label ref="$form-resources/assignmentOop/label"/>
                                    <xf:hint ref="$form-resources/assignmentOop/hint"/>
                                    <xf:alert ref="$fr-resources/detail/labels/alert"/>                                    
                                </xf:input>
                            </xh:td>
                            <xh:td/>
                        </xh:tr>
                    </fr:grid>
                </fr:section>
                <fr:section id="section-11-control" bind="section-11-bind">
                    <xf:label ref="$form-resources/section-11/label"/>
                    <fr:grid>
                        <xh:tr>
                            <xh:td>
                                <xf:input id="username-control" bind="username-bind">
                                    <xf:label ref="$form-resources/username/label"/>
                                    <xf:hint ref="$form-resources/username/hint"/>
                                    <xf:alert ref="$fr-resources/detail/labels/alert"/>
                                </xf:input>
                            </xh:td>
                            <xh:td>
                                <xf:input id="rol-control" bind="rol-bind">
                                    <xf:label ref="$form-resources/rol/label"/>
                                    <xf:hint ref="$form-resources/rol/hint"/>
                                    <xf:alert ref="$fr-resources/detail/labels/alert"/>
                                </xf:input>
                            </xh:td>
                            <xh:td>
                                <xf:input id="processId-control" bind="processId-bind">
                                    <xf:label ref="$form-resources/processId/label"/>
                                    <xf:hint ref="$form-resources/processId/hint"/>
                                    <xf:alert ref="$fr-resources/detail/labels/alert"/>
                                    
                                </xf:input>
                            </xh:td>
                        </xh:tr>
                    </fr:grid>
                </fr:section>
                <fr:section id="section-12-control" bind="section-12-bind">
                    <xf:label ref="$form-resources/section-12/label"/>
                    <fr:grid>
                        <xh:tr>
                            <xh:td>
                                <xf:input id="citizenName-control" bind="citizenName-bind" class="fr-summary fr-search">
                                    <xf:label ref="$form-resources/citizenName/label"/>
                                    <xf:hint ref="$form-resources/citizenName/hint"/>
                                    <xf:alert ref="$fr-resources/detail/labels/alert"/>
                                </xf:input>
                            </xh:td>
                            <xh:td>
                                <xf:input id="citizenSurname-control" bind="citizenSurname-bind"
                                          class="fr-summary fr-search">
                                    <xf:label ref="$form-resources/citizenSurname/label"/>
                                    <xf:hint ref="$form-resources/citizenSurname/hint"/>
                                    <xf:alert ref="$fr-resources/detail/labels/alert"/>
                                </xf:input>
                            </xh:td>
                        </xh:tr>
                        <xh:tr>
                            <xh:td>
                                <fr:dropdown-select1 xmlns:xxbl="http://orbeon.org/oxf/xml/xbl" id="originCountry-control"
                                                     bind="originCountry-bind"
                                                     class="fr-summary fr-search">
                                    <xf:label ref="$form-resources/originCountry/label"/>
                                    <xf:hint ref="$form-resources/originCountry/hint"/>
                                    <xf:alert ref="$fr-resources/detail/labels/alert"/>
                                    <xf:itemset ref="$form-resources/originCountry/item">
                                        <xf:label ref="label"/>
                                        <xf:value ref="value"/>
                                    </xf:itemset>
                                </fr:dropdown-select1>
                            </xh:td>
                            <xh:td>
                                <xf:input id="citizenId-control" bind="citizenId-bind" class="fr-summary fr-search">
                                    <xf:label ref="$form-resources/citizenId/label"/>
                                    <xf:hint ref="$form-resources/citizenId/hint"/>
                                    <xf:alert ref="$fr-resources/detail/labels/alert"/>
                                </xf:input>
                            </xh:td>
                        </xh:tr>
                    </fr:grid>
                </fr:section>
                <fr:section id="section-16-control" bind="section-16-bind">
                    <xf:label ref="$form-resources/section-16/label"/>
                    <fr:grid id="grid-17-grid" bind="grid-17-bind" repeat="content" min="1"
                             template="instance(''grid-17-template'')">
                        <xh:tr>
                            <xh:td>
                                <xf:input id="offenseDate-control" bind="offenseDate-bind">
                                    <xf:label ref="$form-resources/offenseDate/label"/>
                                    <xf:hint ref="$form-resources/offenseDate/hint"/>
                                    <xf:alert ref="$fr-resources/detail/labels/alert"/>
                                </xf:input>
                            </xh:td>
                            <xh:td>
                                <fr:dropdown-select1 xmlns:xxbl="http://orbeon.org/oxf/xml/xbl" id="offenseType-control"
                                                     bind="offenseType-bind">
                                    <xf:label ref="$form-resources/offenseType/label"/>
                                    <xf:hint ref="$form-resources/offenseType/hint"/>
                                    <xf:alert ref="$fr-resources/detail/labels/alert"/>
                                    <xf:itemset ref="$form-resources/offenseType/item">
                                        <xf:label ref="label"/>
                                        <xf:value ref="value"/>
                                    </xf:itemset>
                                </fr:dropdown-select1>
                            </xh:td>
                            <xh:td>
                                <xf:input id="offenseExpiration-control" bind="offenseExpiration-bind">
                                    <xf:label ref="$form-resources/offenseExpiration/label"/>
                                    <xf:hint ref="$form-resources/offenseExpiration/hint"/>
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