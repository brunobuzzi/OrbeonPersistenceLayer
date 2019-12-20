complexity measurement
formDefinition_user_registration_level_1

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
                        <section-1>
                            <label>Section one</label>
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
                </fr:section>
            </fr:body>
        </fr:view>
    </xh:body>
</xh:html>'