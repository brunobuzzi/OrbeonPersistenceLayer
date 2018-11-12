simple registration process
formDefinition_simple_registration

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
        <xh:title>Simple Registration</xh:title>
        <xf:model id="fr-form-model" xxf:expose-xpath-types="true">
         <!-- Main instance -->
         <xf:instance id="fr-form-instance" xxf:exclude-result-prefixes="#all">
                <form>
                    <section-12>
                        <registrationName/>
                        <registrationSurname/>
                        <originCountry/>
                        <registrationId/>
                    </section-12>
                    <section-16>
                        <registrationDetails/>
                    </section-16>
                </form>
            </xf:instance>
            <!-- Bindings -->
         <xf:bind id="fr-form-binds" ref="instance(''fr-form-instance'')">
                <xf:bind id="section-12-bind" ref="section-12" name="section-12">
                    <xf:bind id="registrationName-bind" ref="registrationName" name="registrationName"
                             required="true()"/>
                    <xf:bind id="registrationSurname-bind" ref="registrationSurname"
                             name="registrationSurname"
                             required="true()"/>
                    <xf:bind id="originCountry-bind" ref="originCountry" name="originCountry"
                             required="true()"/>
                    <xf:bind id="registrationId-bind" ref="registrationId" name="registrationId"
                             required="true()"
                             type="xs:positiveInteger"/>
                </xf:bind>
                <xf:bind id="section-16-bind" ref="section-16" name="section-16">
                    <xf:bind id="registrationDetails-bind" ref="registrationDetails"
                             name="registrationDetails"/>
                </xf:bind>
            </xf:bind>
            <!-- Metadata -->
         <xf:instance xxf:readonly="true" id="fr-form-metadata" xxf:exclude-result-prefixes="#all">
                <metadata>
                    <application-name>st</application-name>
                    <form-name>simple-registration</form-name>
                    <title xml:lang="en">Simple Registration</title>
                    <description xml:lang="en">Simple Registration</description>
                    <title xml:lang="es">PeticiÃ³n de Permiso de Construccion CASA</title>
                    <description xml:lang="es"/>
                    <singleton>false</singleton>
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
                        <registrationDetails>
                            <label>Details</label>
                            <hint/>
                        </registrationDetails>
                        <registrationName>
                            <label>Name</label>
                            <hint/>
                        </registrationName>
                        <registrationSurname>
                            <label>Surname</label>
                            <hint/>
                        </registrationSurname>
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
                        <registrationId>
                            <label>Personal Id Number</label>
                            <hint/>
                        </registrationId>
                        <section-12>
                            <label>Registration</label>
                            <help/>
                        </section-12>
                        <section-16>
                            <label>Registration Details</label>
                            <help/>
                        </section-16>
                    </resource>
                    <resource xml:lang="es">
                        <registrationDetails>
                            <label/>
                            <hint/>
                        </registrationDetails>
                        <registrationName>
                            <label/>
                            <hint/>
                        </registrationName>
                        <registrationSurname>
                            <label/>
                            <hint/>
                        </registrationSurname>
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
                        <registrationId>
                            <label/>
                            <hint/>
                        </registrationId>
                        <section-12>
                            <label/>
                            <help/>
                        </section-12>
                        <section-16>
                            <label/>
                            <help/>
                        </section-16>
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
                     xmlns:oxf="http://www.orbeon.com/oxf/processors"
                     xmlns:p="http://www.orbeon.com/oxf/pipeline">
                <fr:section id="section-12-control" bind="section-12-bind">
                    <xf:label ref="$form-resources/section-12/label"/>
                    <fr:grid>
                        <xh:tr>
                            <xh:td>
                                <xf:input id="registrationName-control" bind="registrationName-bind"
                                          class="fr-summary fr-search">
                                    <xf:label ref="$form-resources/registrationName/label"/>
                                    <xf:hint ref="$form-resources/registrationName/hint"/>
                                    <xf:alert ref="$fr-resources/detail/labels/alert"/>
                                </xf:input>
                            </xh:td>
                            <xh:td>
                                <xf:input id="registrationSurname-control" bind="registrationSurname-bind"
                                          class="fr-summary fr-search">
                                    <xf:label ref="$form-resources/registrationSurname/label"/>
                                    <xf:hint ref="$form-resources/registrationSurname/hint"/>
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
                                <xf:input id="registrationId-control" bind="registrationId-bind"
                                          class="fr-summary fr-search">
                                    <xf:label ref="$form-resources/registrationId/label"/>
                                    <xf:hint ref="$form-resources/registrationId/hint"/>
                                    <xf:alert ref="$fr-resources/detail/labels/alert"/>
                                </xf:input>
                            </xh:td>
                        </xh:tr>
                    </fr:grid>
                </fr:section>
                <fr:section id="section-16-control" bind="section-16-bind">
                    <xf:label ref="$form-resources/section-16/label"/>
                    <fr:grid>
                        <xh:tr>
                            <xh:td>
                                <fr:tinymce xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                                            xmlns:xxbl="http://orbeon.org/oxf/xml/xbl"
                                            xmlns:f="http://orbeon.org/oxf/xml/formatting"
                                            id="registrationDetails-control"
                                            bind="registrationDetails-bind">
                                    <xf:label ref="$form-resources/registrationDetails/label"/>
                                    <xf:hint ref="$form-resources/registrationDetails/hint"/>
                                    <xf:alert ref="$fr-resources/detail/labels/alert"/>
                                </fr:tinymce>
                            </xh:td>
                        </xh:tr>
                    </fr:grid>
                </fr:section>
            </fr:body>
        </fr:view>
   </xh:body>
</xh:html>'