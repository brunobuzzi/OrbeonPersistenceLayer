other
form_sales_application

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
        <xh:title>Customer</xh:title>
        <xf:model id="fr-form-model" xxf:expose-xpath-types="true">
            <!-- Main instance -->
            <xf:instance id="fr-form-instance" xxf:exclude-result-prefixes="#all" xxf:index="id">
                <form>
                    <customer-data>
                        <customer-data-iteration>
                            <name/>
                            <surname/>
                            <birth/>
                            <code/>
                            <gender/>
                            <feedback/>
                            <area/>
                            <country/>
                            <signature/>
                        </customer-data-iteration>
                    </customer-data>
                </form>
            </xf:instance>
            <!-- Bindings -->
            <xf:bind id="fr-form-binds" ref="instance(''fr-form-instance'')">
                <xf:bind id="customer-data-bind" name="customer-data" ref="customer-data">
                    <xf:bind id="customer-data-iteration-bind" ref="customer-data-iteration"
                             name="customer-data-iteration">
                        <xf:bind id="name-bind" name="name" ref="name" xxf:whitespace="trim" required="true()"/>
                        <xf:bind id="surname-bind" ref="surname" name="surname" xxf:whitespace="trim"
                                 required="true()"/>
                        <xf:bind id="birth-bind" ref="birth" name="birth" type="xs:date" required="true()"/>
                        <xf:bind id="code-bind" ref="code" name="code" xxf:whitespace="trim" required="true()"
                                 type="xs:integer"/>
                        <xf:bind id="gender-bind" ref="gender" name="gender"/>
                        <xf:bind id="feedback-bind" ref="feedback" name="feedback" type="xf:boolean"/>
                        <xf:bind id="area-bind" ref="area" name="area"/>
                        <xf:bind id="signature-bind" ref="signature" name="signature" type="xf:anyURI"/>
                        <xf:bind id="country-bind" ref="country" name="country" required="true()"/>
                    </xf:bind>
                </xf:bind>
            </xf:bind>
            <!-- Metadata -->
            <xf:instance xxf:readonly="true" id="fr-form-metadata" xxf:exclude-result-prefixes="#all">
                <metadata>
                    <application-name>sales-application</application-name>
                    <form-name>customer</form-name>
                    <title xml:lang="en">Customer</title>
                    <description xml:lang="en"/>
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
            <xf:instance xxf:readonly="true" id="fr-form-resources" xxf:exclude-result-prefixes="#all">
                <resources>
                    <resource xml:lang="en">
                        <customer-data>
                            <label>Customer Data</label>
                        </customer-data>
                        <name>
                            <label>Name</label>
                            <hint/>
                        </name>
                        <surname>
                            <label>Surname</label>
                            <hint/>
                        </surname>
                        <birth>
                            <label>Birth</label>
                            <hint/>
                        </birth>
                        <code>
                            <label>Integer Code</label>
                            <hint/>
                        </code>
                        <gender>
                            <label>Gender</label>
                            <hint/>
                            <item>
                                <label>Male</label>
                                <hint/>
                                <value>male</value>
                            </item>
                            <item>
                                <label>Female</label>
                                <hint/>
                                <value>female</value>
                            </item>
                        </gender>
                        <feedback>
                            <label>Feedback mails</label>
                            <hint/>
                        </feedback>
                        <area>
                            <label>Areas</label>
                            <hint/>
                            <item>
                                <label>Area 1</label>
                                <hint/>
                                <value>1</value>
                            </item>
                            <item>
                                <label>Area 2</label>
                                <hint/>
                                <value>2</value>
                            </item>
                            <item>
                                <label>Area 51</label>
                                <hint/>
                                <value>51</value>
                            </item>
                        </area>
                        <country>
                            <label>Country</label>
                            <hint/>
                            <item>
                                <label>USA</label>
                                <value>usa</value>
                            </item>
                            <item>
                                <label>Russia</label>
                                <value>russia</value>
                            </item>
                            <item>
                                <label>Canada</label>
                                <value>canada</value>
                            </item>
                            <item>
                                <label>Germany</label>
                                <value>germany</value>
                            </item>
                            <item>
                                <label>UK</label>  
                                <value>uk</value>
                            </item>
                            <item>
                                <label>China</label>
                                <value>china</value>
                            </item>
                            <item>
                                <label>Japan</label>
                                <value>japan</value>
                            </item>
                        </country>
                        <signature>
                            <label>Signature</label>
                            <hint/>
                        </signature>
                    </resource>
                </resources>
            </xf:instance>
            <xf:instance xxf:readonly="true" xxf:exclude-result-prefixes="#all"
                         id="customer-data-template">
                <customer-data-iteration>
                    <name/>
                    <surname/>
                    <birth/>
                    <code/>
                    <gender/>
                    <feedback/>
                    <area/>
                    <signature/>
                    <country/>
                </customer-data-iteration>
            </xf:instance>
        </xf:model>
    </xh:head>
    <xh:body>
        <fr:view>
            <fr:body xmlns:xbl="http://www.w3.org/ns/xbl" xmlns:p="http://www.orbeon.com/oxf/pipeline"
                     xmlns:oxf="http://www.orbeon.com/oxf/processors">
                <fr:section id="customer-data-control" bind="customer-data-bind" repeat="content" min="1"
                            template="instance(''customer-data-template'')"
                            apply-defaults="true"
                            fb:initial-iterations="first">
                    <xf:label ref="$form-resources/customer-data/label"/>
                    <fr:grid id="grid-1-grid">
                        <fr:c y="1" x="1" w="6">
                                <xf:input id="name-control" bind="name-bind" class="fr-summary fr-search">
                                    <xf:label ref="$form-resources/name/label"/>
                                    <xf:hint ref="$form-resources/name/hint"/>
                                    <xf:alert ref="$fr-resources/detail/labels/alert"/>
                                </xf:input>
                            </fr:c>
                        <fr:c y="1" x="7" w="6">
                                <xf:input id="surname-control" bind="surname-bind" class="fr-summary fr-search">
                                    <xf:label ref="$form-resources/surname/label"/>
                                    <xf:hint ref="$form-resources/surname/hint"/>
                                    <xf:alert ref="$fr-resources/detail/labels/alert"/>
                                </xf:input>
                            </fr:c>
                        <fr:c y="2" x="1" w="6">
                                <fr:dropdown-date xmlns="http://orbeon.org/oxf/xml/form-builder"
                                              xmlns:xxbl="http://orbeon.org/oxf/xml/xbl"
                                              id="birth-control"
                                              bind="birth-bind"
                                              class="fr-summary fr-search">
                                    <xf:label ref="$form-resources/birth/label"/>
                                    <xf:hint ref="$form-resources/birth/hint"/>
                                    <xf:alert ref="$fr-resources/detail/labels/alert"/>
                                </fr:dropdown-date>
                            </fr:c>
                        <fr:c y="2" x="7" w="6">
                                <fr:number id="code-control" bind="code-bind" class="fr-summary fr-search">
                                    <xf:label ref="$form-resources/code/label"/>
                                    <xf:hint ref="$form-resources/code/hint"/>
                                    <xf:alert ref="$fr-resources/detail/labels/alert"/>
                                </fr:number>
                            </fr:c>
                        <fr:c y="3" x="1" w="6">
                                <xf:select1 id="gender-control" appearance="full" bind="gender-bind"
                                        class="fr-summary fr-search">
                                    <xf:label ref="$form-resources/gender/label"/>
                                    <xf:hint ref="$form-resources/gender/hint"/>
                                    <xf:alert ref="$fr-resources/detail/labels/alert"/>
                                    <xf:itemset ref="$form-resources/gender/item">
                                        <xf:label ref="label"/>
                                        <xf:value ref="value"/>
                                        <xf:hint ref="hint"/>
                                    </xf:itemset>
                                </xf:select1>
                            </fr:c>
                        <fr:c y="3" x="7" w="6">
                                <fr:yesno-input xmlns="http://orbeon.org/oxf/xml/form-builder"
                                            xmlns:xxbl="http://orbeon.org/oxf/xml/xbl"
                                            id="feedback-control"
                                            bind="feedback-bind">
                                    <xf:label ref="$form-resources/feedback/label"/>
                                    <xf:hint ref="$form-resources/feedback/hint"/>
                                    <xf:alert ref="$fr-resources/detail/labels/alert"/>
                                </fr:yesno-input>
                            </fr:c>
                        <fr:c y="4" x="1" w="6">
                                <xf:select id="area-control" appearance="full" bind="area-bind">
                                    <xf:label ref="$form-resources/area/label"/>
                                    <xf:hint ref="$form-resources/area/hint"/>
                                    <xf:alert ref="$fr-resources/detail/labels/alert"/>
                                    <xf:itemset ref="$form-resources/area/item">
                                        <xf:label ref="label"/>
                                        <xf:value ref="value"/>
                                        <xf:hint ref="hint"/>
                                    </xf:itemset>
                                </xf:select>
                            </fr:c>
                        <fr:c y="4" x="7" w="6">
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
                    </fr:grid>
                    <fr:grid id="grid-2-grid">
                        <fr:c y="1" x="1" w="12">
                                <fr:handwritten-signature xmlns="http://orbeon.org/oxf/xml/form-builder"
                                                      xmlns:xxbl="http://orbeon.org/oxf/xml/xbl"
                                                      id="signature-control"
                                                      bind="signature-bind">
                                    <xf:label ref="$form-resources/signature/label"/>
                                    <xf:hint ref="$form-resources/signature/hint"/>
                                    <xf:alert ref="$fr-resources/detail/labels/alert"/>
                                </fr:handwritten-signature>
                            </fr:c>
                    </fr:grid>
                </fr:section>
            </fr:body>
        </fr:view>
    </xh:body>
</xh:html>'