complexity measurement
formDefinition_user_registration_level_2

	^'<xh:html xmlns:xh="http://www.w3.org/1999/xhtml" xmlns:xf="http://www.w3.org/2002/xforms"
         xmlns:xs="http://www.w3.org/2001/XMLSchema"
         xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
         xmlns:ev="http://www.w3.org/2001/xml-events"
         xmlns:xi="http://www.w3.org/2001/XInclude"
         xmlns:xxi="http://orbeon.org/oxf/xml/xinclude"
         xmlns:xxf="http://orbeon.org/oxf/xml/xforms"
         xmlns:map="http://www.w3.org/2005/xpath-functions/map"
         xmlns:array="http://www.w3.org/2005/xpath-functions/array"
         xmlns:exf="http://www.exforms.org/exf/1-0"
         xmlns:fr="http://orbeon.org/oxf/xml/form-runner"
         xmlns:saxon="http://saxon.sf.net/"
         xmlns:sql="http://orbeon.org/oxf/xml/sql"
         xmlns:soap="http://schemas.xmlsoap.org/soap/envelope/"
         xmlns:fb="http://orbeon.org/oxf/xml/form-builder">
    <xh:head>
        <xh:title>Ten Fields Forms</xh:title>
        <xf:model id="fr-form-model" xxf:expose-xpath-types="true" xxf:analysis.calculate="true">
            <!-- Main instance -->
            <xf:instance id="fr-form-instance" xxf:exclude-result-prefixes="#all" xxf:index="id">
                <form>
                    <section-1>
                        <grid-1>
                            <name/>
                            <surname/>
                            <registrationDate/>
                            <registrationTime/>
                            <internalCode/>
                            <accountType/>
                            <currencies/>
                            <details/>
                            <paymentRequired/>
                            <paymentType/>
                        </grid-1>
                        <section-2>
                            <grid-2>
                                <email/>
                                <country/>
                                <address/>
                                <mobile/>
                                <birth/>
                                <title/>
                                <budget/>
                                <carType/>
                                <photo filename="" mediatype="" size=""/>
                                <signature/>
                            </grid-2>
                        </section-2>
                    </section-1>
                </form>
            </xf:instance>
            <!-- Bindings -->
            <xf:bind id="fr-form-binds" ref="instance(''fr-form-instance'')">
                <xf:bind id="section-1-bind" name="section-1" ref="section-1">
                    <xf:bind id="grid-1-bind" ref="grid-1" name="grid-1">
                        <xf:bind id="name-bind" name="name" ref="name" xxf:whitespace="trim"/>
                        <xf:bind id="surname-bind" ref="surname" name="surname" xxf:whitespace="trim"/>
                        <xf:bind id="registrationDate-bind" ref="registrationDate" name="registrationDate"
                                 type="xf:date"/>
                        <xf:bind id="registrationTime-bind" ref="registrationTime" name="registrationTime"
                                 type="xf:time"/>
                        <xf:bind id="internalCode-bind" ref="internalCode" name="internalCode" type="xf:decimal"/>
                        <xf:bind id="accountType-bind" ref="accountType" name="accountType"/>
                        <xf:bind id="currencies-bind" ref="currencies" name="currencies"/>
                        <xf:bind id="details-bind" ref="details" name="details"/>
                        <xf:bind id="paymentRequired-bind" ref="paymentRequired" name="paymentRequired"
                                 type="xf:boolean"/>
                        <xf:bind id="paymentType-bind" ref="paymentType" name="paymentType"/>
                    </xf:bind>
                    <xf:bind id="section-2-bind" ref="section-2" name="section-2">
                        <xf:bind id="grid-2-bind" ref="grid-2" name="grid-2">
                            <xf:bind id="email-bind" ref="email" name="email" xxf:whitespace="trim"/>
                            <xf:bind id="country-bind" ref="country" name="country"/>
                            <xf:bind id="address-bind" ref="address" name="address" xxf:whitespace="trim"/>
                            <xf:bind id="mobile-bind" ref="mobile" name="mobile" xxf:whitespace="trim"/>
                            <xf:bind id="birth-bind" ref="birth" name="birth" type="xf:date"/>
                            <xf:bind id="title-bind" ref="title" name="title" xxf:whitespace="trim"/>
                            <xf:bind id="budget-bind" ref="budget" name="budget" type="xf:decimal"/>
                            <xf:bind id="carType-bind" ref="carType" name="carType"/>
                            <xf:bind id="photo-bind" ref="photo" name="photo" type="xf:anyURI"
                                     constraint="xxf:upload-mediatypes(''image/*'')"/>
                            <xf:bind id="signature-bind" ref="signature" name="signature" type="xf:anyURI"/>
                        </xf:bind>
                    </xf:bind>
                </xf:bind>
            </xf:bind>
            <!-- Metadata -->
            <xf:instance id="fr-form-metadata" xxf:readonly="true" xxf:exclude-result-prefixes="#all">
                <metadata>
                    <application-name>tenfields</application-name>
                    <form-name>tenfields</form-name>
                    <title xml:lang="en">Ten Fields Forms</title>
                    <description xml:lang="en"/>
                    <created-with-version>2019.1.0.201910220207 PE</created-with-version>
                    <library-versions>
                        <orbeon>5</orbeon>
                    </library-versions>
                </metadata>
            </xf:instance>
            <!-- Attachments -->
            <xf:instance id="fr-form-attachments" xxf:exclude-result-prefixes="#all">
                <attachments/>
            </xf:instance>
            <!-- All form resources -->
            <xf:instance xxf:readonly="true" id="fr-form-resources" xxf:exclude-result-prefixes="#all">
                <resources>
                    <resource xml:lang="en">
                        <email>
                            <label>Email</label>
                            <hint/>
                        </email>
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
                                <label>China</label>
                                <value>china</value>
                            </item>
                            <item>
                                <label>Brazil</label>
                                <value>brazil</value>
                            </item>
                            <item>
                                <label>India</label>
                                <value>india</value>
                            </item>
                        </country>
                        <address>
                            <label>Address</label>
                            <hint/>
                        </address>
                        <mobile>
                            <label>Mobile</label>
                            <hint/>
                        </mobile>
                        <birth>
                            <label>Birth</label>
                            <hint/>
                        </birth>
                        <title>
                            <label>Title</label>
                            <hint/>
                        </title>
                        <budget>
                            <label>Budget</label>
                            <hint/>
                        </budget>
                        <carType>
                            <label>Car Type</label>
                            <hint/>
                            <item>
                                <label>Car</label>
                                <hint/>
                                <value>car</value>
                            </item>
                            <item>
                                <label>Van</label>
                                <hint/>
                                <value>van</value>
                            </item>
                            <item>
                                <label>Truck</label>
                                <hint/>
                                <value>truck</value>
                            </item>
                            <item>
                                <label>Motorcycle</label>
                                <hint/>
                                <value>motorcycle</value>
                            </item>
                            <item>
                                <label>Other</label>
                                <hint/>
                                <value>other</value>
                            </item>
                        </carType>
                        <photo>
                            <label>User Photo</label>
                            <hint/>
                        </photo>
                        <signature>
                            <label>Signature</label>
                            <hint/>
                        </signature>
                        <section-1>
                            <label>User Data</label>
                        </section-1>
                        <name>
                            <label>Name</label>
                            <hint/>
                        </name>
                        <surname>
                            <label>Surname</label>
                            <hint/>
                        </surname>
                        <registrationDate>
                            <label>Registration Date</label>
                            <hint/>
                        </registrationDate>
                        <registrationTime>
                            <label>Registration Time</label>
                            <hint/>
                        </registrationTime>
                        <internalCode>
                            <label>Internal Code</label>
                            <hint/>
                        </internalCode>
                        <accountType>
                            <label>Account Type</label>
                            <hint/>
                            <item>
                                <label>Normal</label>
                                <value>normal</value>
                            </item>
                            <item>
                                <label>Advanced</label>
                                <value>advanced</value>
                            </item>
                            <item>
                                <label>Pro</label>
                                <value>pro</value>
                            </item>
                        </accountType>
                        <currencies>
                            <label>Currencies</label>
                            <hint/>
                            <item>
                                <label>USD</label>
                                <hint/>
                                <value>usd</value>
                            </item>
                            <item>
                                <label>EURO</label>
                                <hint/>
                                <value>euro</value>
                            </item>
                            <item>
                                <label>Peso</label>
                                <hint/>
                                <value>peso</value>
                            </item>
                        </currencies>
                        <details>
                            <label>Details</label>
                            <hint/>
                        </details>
                        <paymentRequired>
                            <label>Payment Required</label>
                            <hint/>
                        </paymentRequired>
                        <paymentType>
                            <label>Payment Type</label>
                            <hint/>
                            <item>
                                <label>Visa</label>
                                <hint/>
                                <value>visa</value>
                            </item>
                            <item>
                                <label>Master</label>
                                <hint/>
                                <value>master</value>
                            </item>
                            <item>
                                <label>Paypal</label>
                                <hint/>
                                <value>paypal</value>
                            </item>
                        </paymentType>
                        <section-2>
                            <label>User Location</label>
                            <help/>
                        </section-2>
                    </resource>
                </resources>
            </xf:instance>
        </xf:model>
    </xh:head>
    <xh:body>
        <fr:view>
            <fr:body xmlns:p="http://www.orbeon.com/oxf/pipeline" xmlns:xbl="http://www.w3.org/ns/xbl"
                     xmlns:oxf="http://www.orbeon.com/oxf/processors">
                <fr:section id="section-1-section" bind="section-1-bind">
                    <xf:label ref="$form-resources/section-1/label"/>
                    <fr:grid id="grid-1-grid" bind="grid-1-bind">
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
                        <fr:c x="1" y="2" w="6">
                            <fr:date xmlns:xxbl="http://orbeon.org/oxf/xml/xbl"
                                     xmlns:DateSupport="java:org.orbeon.xbl.DateSupportJava"
                                     id="registrationDate-control"
                                     bind="registrationDate-bind"
                                     class="fr-summary fr-search">
                                <xf:label ref="$form-resources/registrationDate/label"/>
                                <xf:hint ref="$form-resources/registrationDate/hint"/>
                                <xf:alert ref="$fr-resources/detail/labels/alert"/>
                            </fr:date>
                        </fr:c>
                        <fr:c x="7" y="2" w="6">
                            <fr:time xmlns:xxbl="http://orbeon.org/oxf/xml/xbl" id="registrationTime-control"
                                     bind="registrationTime-bind">
                                <xf:label ref="$form-resources/registrationTime/label"/>
                                <xf:hint ref="$form-resources/registrationTime/hint"/>
                                <xf:alert ref="$fr-resources/detail/labels/alert"/>
                            </fr:time>
                        </fr:c>
                        <fr:c x="1" y="3" w="6">
                            <fr:number xmlns="http://orbeon.org/oxf/xml/form-builder"
                                       xmlns:xxbl="http://orbeon.org/oxf/xml/xbl"
                                       xmlns:NumberSupport="java:org.orbeon.xbl.NumberSupportJava"
                                       id="internalCode-control"
                                       bind="internalCode-bind"
                                       class="fr-summary fr-search">
                                <xf:label ref="$form-resources/internalCode/label"/>
                                <xf:hint ref="$form-resources/internalCode/hint"/>
                                <xf:alert ref="$fr-resources/detail/labels/alert"/>
                            </fr:number>
                        </fr:c>
                        <fr:c x="7" y="3" w="6">
                            <xf:select1 id="accountType-control" bind="accountType-bind" class="fr-summary fr-search"
                                        appearance="dropdown">
                                <xf:label ref="$form-resources/accountType/label"/>
                                <xf:hint ref="$form-resources/accountType/hint"/>
                                <xf:alert ref="$fr-resources/detail/labels/alert"/>
                                <xf:itemset ref="$form-resources/accountType/item">
                                    <xf:label ref="label"/>
                                    <xf:value ref="value"/>
                                </xf:itemset>
                            </xf:select1>
                        </fr:c>
                        <fr:c x="1" y="4" w="6">
                            <xf:select id="currencies-control" appearance="full" bind="currencies-bind"
                                       class="fr-summary fr-search">
                                <xf:label ref="$form-resources/currencies/label"/>
                                <xf:hint ref="$form-resources/currencies/hint"/>
                                <xf:alert ref="$fr-resources/detail/labels/alert"/>
                                <xf:itemset ref="$form-resources/currencies/item">
                                    <xf:label ref="label"/>
                                    <xf:value ref="value"/>
                                    <xf:hint ref="hint"/>
                                </xf:itemset>
                            </xf:select>
                        </fr:c>
                        <fr:c x="7" y="4" w="6">
                            <xf:textarea id="details-control" bind="details-bind">
                                <xf:label ref="$form-resources/details/label"/>
                                <xf:hint ref="$form-resources/details/hint"/>
                                <xf:alert ref="$fr-resources/detail/labels/alert"/>
                            </xf:textarea>
                        </fr:c>
                        <fr:c x="1" y="5" w="6">
                            <fr:yesno-input xmlns="http://orbeon.org/oxf/xml/form-builder"
                                            xmlns:xxbl="http://orbeon.org/oxf/xml/xbl"
                                            id="paymentRequired-control"
                                            bind="paymentRequired-bind">
                                <xf:label ref="$form-resources/paymentRequired/label"/>
                                <xf:hint ref="$form-resources/paymentRequired/hint"/>
                                <xf:alert ref="$fr-resources/detail/labels/alert"/>
                            </fr:yesno-input>
                        </fr:c>
                        <fr:c x="7" y="5" w="6">
                            <xf:select1 id="paymentType-control" appearance="full" bind="paymentType-bind">
                                <xf:label ref="$form-resources/paymentType/label"/>
                                <xf:hint ref="$form-resources/paymentType/hint"/>
                                <xf:alert ref="$fr-resources/detail/labels/alert"/>
                                <xf:itemset ref="$form-resources/paymentType/item">
                                    <xf:label ref="label"/>
                                    <xf:value ref="value"/>
                                    <xf:hint ref="hint"/>
                                </xf:itemset>
                            </xf:select1>
                        </fr:c>
                    </fr:grid>
                    <fr:section id="section-2-section" bind="section-2-bind">
                        <xf:label ref="$form-resources/section-2/label"/>
                        <fr:grid id="grid-2-grid" bind="grid-2-bind">
                            <fr:c x="1" y="1" w="6">
                                <xf:input id="email-control" bind="email-bind">
                                    <xf:label ref="$form-resources/email/label"/>
                                    <xf:hint ref="$form-resources/email/hint"/>
                                    <xf:alert ref="$fr-resources/detail/labels/alert"/>
                                </xf:input>
                            </fr:c>
                            <fr:c x="7" y="1" w="6">
                                <xf:select1 id="country-control" bind="country-bind" appearance="dropdown"
                                            class="fr-summary fr-search">
                                    <xf:label ref="$form-resources/country/label"/>
                                    <xf:hint ref="$form-resources/country/hint"/>
                                    <xf:alert ref="$fr-resources/detail/labels/alert"/>
                                    <xf:itemset ref="$form-resources/country/item">
                                        <xf:label ref="label"/>
                                        <xf:value ref="value"/>
                                    </xf:itemset>
                                </xf:select1>
                            </fr:c>
                            <fr:c x="1" y="2" w="6">
                                <xf:input id="address-control" bind="address-bind">
                                    <xf:label ref="$form-resources/address/label"/>
                                    <xf:hint ref="$form-resources/address/hint"/>
                                    <xf:alert ref="$fr-resources/detail/labels/alert"/>
                                </xf:input>
                            </fr:c>
                            <fr:c x="7" y="2" w="6">
                                <xf:input id="mobile-control" bind="mobile-bind" class="fr-summary fr-search">
                                    <xf:label ref="$form-resources/mobile/label"/>
                                    <xf:hint ref="$form-resources/mobile/hint"/>
                                    <xf:alert ref="$fr-resources/detail/labels/alert"/>
                                </xf:input>
                            </fr:c>
                            <fr:c x="1" y="3" w="6">
                                <fr:date xmlns:xxbl="http://orbeon.org/oxf/xml/xbl"
                                         xmlns:DateSupport="java:org.orbeon.xbl.DateSupportJava"
                                         id="birth-control"
                                         bind="birth-bind">
                                    <xf:label ref="$form-resources/birth/label"/>
                                    <xf:hint ref="$form-resources/birth/hint"/>
                                    <xf:alert ref="$fr-resources/detail/labels/alert"/>
                                </fr:date>
                            </fr:c>
                            <fr:c x="7" y="3" w="6">
                                <xf:input id="title-control" bind="title-bind">
                                    <xf:label ref="$form-resources/title/label"/>
                                    <xf:hint ref="$form-resources/title/hint"/>
                                    <xf:alert ref="$fr-resources/detail/labels/alert"/>
                                </xf:input>
                            </fr:c>
                            <fr:c x="1" y="4" w="6">
                                <fr:number xmlns="http://orbeon.org/oxf/xml/form-builder"
                                           xmlns:xxbl="http://orbeon.org/oxf/xml/xbl"
                                           xmlns:NumberSupport="java:org.orbeon.xbl.NumberSupportJava"
                                           id="budget-control"
                                           bind="budget-bind"
                                           class="fr-summary fr-search">
                                    <xf:label ref="$form-resources/budget/label"/>
                                    <xf:hint ref="$form-resources/budget/hint"/>
                                    <xf:alert ref="$fr-resources/detail/labels/alert"/>
                                </fr:number>
                            </fr:c>
                            <fr:c x="7" y="4" w="6">
                                <xf:select1 id="carType-control" appearance="full" bind="carType-bind">
                                    <xf:label ref="$form-resources/carType/label"/>
                                    <xf:hint ref="$form-resources/carType/hint"/>
                                    <xf:alert ref="$fr-resources/detail/labels/alert"/>
                                    <xf:itemset ref="$form-resources/carType/item">
                                        <xf:label ref="label"/>
                                        <xf:value ref="value"/>
                                        <xf:hint ref="hint"/>
                                    </xf:itemset>
                                </xf:select1>
                            </fr:c>
                            <fr:c x="1" y="5" w="6">
                                <fr:image-attachment xmlns="http://orbeon.org/oxf/xml/form-builder"
                                                     xmlns:xxbl="http://orbeon.org/oxf/xml/xbl"
                                                     id="photo-control"
                                                     bind="photo-bind"
                                                     class="fr-attachment">
                                    <xf:label ref="$form-resources/photo/label"/>
                                    <xf:hint ref="$form-resources/photo/hint"/>
                                    <xf:alert ref="$fr-resources/detail/labels/alert"/>
                                </fr:image-attachment>
                            </fr:c>
                            <fr:c x="7" y="5" w="6">
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
                </fr:section>
            </fr:body>
        </fr:view>
    </xh:body>
</xh:html>'