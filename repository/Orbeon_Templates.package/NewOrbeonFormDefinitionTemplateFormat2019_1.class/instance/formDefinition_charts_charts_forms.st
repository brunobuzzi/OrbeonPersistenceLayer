chart form
formDefinition_charts_charts_forms

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
         xmlns:fb="http://orbeon.org/oxf/xml/form-builder"
         fr:data-format-version="2019.1.0">
    <xh:head>
        <xh:title>Charts Form</xh:title>
        <xf:model id="fr-form-model" xxf:expose-xpath-types="true" xxf:analysis.calculate="true">
            <xf:instance id="fr-form-instance" xxf:exclude-result-prefixes="#all" xxf:index="id">
                <form>
                    <section-1>
                        <grid-1>
                            <name/>
                            <industry/>
                            <invoiceTotal/>
                            <associatedCost/>
                            <taxes/>
                            <confirmed/>
                            <paymentDate/>
                            <invoiceType/>
                        </grid-1>
                    </section-1>
                </form>
            </xf:instance>
            <xf:bind id="fr-form-binds" ref="instance(''fr-form-instance'')">
                <xf:bind id="section-1-bind" name="section-1" ref="section-1">
                    <xf:bind id="grid-1-bind" ref="grid-1" name="grid-1">
                        <xf:bind id="name-bind" name="name" ref="name" xxf:whitespace="trim"/>
                        <xf:bind id="industry-bind" ref="industry" name="industry"/>
                        <xf:bind id="invoiceTotal-bind" ref="invoiceTotal" name="invoiceTotal" type="xf:decimal"/>
                        <xf:bind id="associatedCost-bind" ref="associatedCost" name="associatedCost"
                                 type="xf:decimal"/>
                        <xf:bind id="taxes-bind" ref="taxes" name="taxes" type="xf:decimal"/>
                        <xf:bind id="confirmed-bind" ref="confirmed" name="confirmed" type="xf:boolean"/>
                        <xf:bind id="paymentDate-bind" ref="paymentDate" name="paymentDate" type="xf:date"/>
                        <xf:bind id="invoiceType-bind" ref="invoiceType" name="invoiceType"/>
                    </xf:bind>
                </xf:bind>
            </xf:bind>
            <xf:instance id="fr-form-metadata" xxf:readonly="true" xxf:exclude-result-prefixes="#all">
                <metadata>
                    <application-name>charts</application-name>
                    <form-name>charts-forms</form-name>
                    <title xml:lang="en">Charts Form</title>
                    <description xml:lang="en"/>
                    <created-with-version>2019.2.1.202002282212 PE</created-with-version>
                    <updated-with-version>2019.2.1.202002282212 PE</updated-with-version>
                    <updated-with-version>2020.1.1.202102012142 PE</updated-with-version>
                    <migration version="2019.1.0">{"migrations":[{"containerPath":[{"value":"section-1"}],"newGridElem":{"value":"grid-1"},"afterElem":null,"content":[{"value":"name"},{"value":"industry"},{"value":"invoiceTotal"},{"value":"associatedCost"},{"value":"taxes"},{"value":"confirmed"},{"value":"paymentDate"},{"value":"invoiceType"}],"topLevel":true}]}</migration>
                    <available>false</available>
                </metadata>
            </xf:instance>
            <xf:instance id="fr-form-attachments" xxf:exclude-result-prefixes="#all">
                <attachments/>
            </xf:instance>
            <xf:instance xxf:readonly="true" id="fr-form-resources" xxf:exclude-result-prefixes="#all">
                <resources>
                    <resource xml:lang="en">
                        <section-1>
                            <label>Chart Fields</label>
                        </section-1>
                        <name>
                            <label>Name</label>
                            <hint/>
                        </name>
                        <industry>
                            <label>Industry</label>
                            <hint/>
                            <item>
                                <label>Software</label>
                                <value>software</value>
                            </item>
                            <item>
                                <label>Hardware</label>
                                <value>hardware</value>
                            </item>
                            <item>
                                <label>Oil</label>
                                <value>oil</value>
                            </item>
                            <item>
                                <label>Transportation</label>
                                <value>transportation</value>
                            </item>
                            <item>
                                <label>Solar Energy</label>
                                <value>solar-energy</value>
                            </item>
                        </industry>
                        <invoiceTotal>
                            <label>Invoice Total</label>
                            <hint/>
                        </invoiceTotal>
                        <associatedCost>
                            <label>Associated Cost</label>
                            <hint/>
                        </associatedCost>
                        <taxes>
                            <label>Taxes</label>
                            <hint/>
                        </taxes>
                        <confirmed>
                            <label>Confirmed</label>
                            <hint/>
                        </confirmed>
                        <paymentDate>
                            <label>Payment Date</label>
                            <hint/>
                        </paymentDate>
                        <invoiceType>
                            <label>Invoice Type</label>
                            <hint/>
                            <item>
                                <label>Export</label>
                                <hint/>
                                <value>export</value>
                            </item>
                            <item>
                                <label>Import</label>
                                <hint/>
                                <value>import</value>
                            </item>
                            <item>
                                <label>Services</label>
                                <hint/>
                                <value>services</value>
                            </item>
                            <item>
                                <label>Free</label>
                                <hint/>
                                <value>free</value>
                            </item>
                        </invoiceType>
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
                        <fr:c x="1" y="2" w="6">
                            <fr:number xmlns="http://orbeon.org/oxf/xml/form-builder"
                                       xmlns:xxbl="http://orbeon.org/oxf/xml/xbl"
                                       xmlns:NumberSupport="java:org.orbeon.xbl.NumberSupportJava"
                                       id="invoiceTotal-control"
                                       bind="invoiceTotal-bind"
                                       class="fr-search fr-summary">
                                <xf:label ref="$form-resources/invoiceTotal/label"/>
                                <xf:hint ref="$form-resources/invoiceTotal/hint"/>
                                <xf:alert ref="$fr-resources/detail/labels/alert"/>
                            </fr:number>
                        </fr:c>
                        <fr:c x="7" y="2" w="6">
                            <fr:number xmlns="http://orbeon.org/oxf/xml/form-builder"
                                       xmlns:xxbl="http://orbeon.org/oxf/xml/xbl"
                                       xmlns:NumberSupport="java:org.orbeon.xbl.NumberSupportJava"
                                       id="associatedCost-control"
                                       bind="associatedCost-bind"
                                       class="fr-summary fr-search">
                                <xf:label ref="$form-resources/associatedCost/label"/>
                                <xf:hint ref="$form-resources/associatedCost/hint"/>
                                <xf:alert ref="$fr-resources/detail/labels/alert"/>
                            </fr:number>
                        </fr:c>
                        <fr:c x="1" y="3" w="6">
                            <fr:number xmlns="http://orbeon.org/oxf/xml/form-builder"
                                       xmlns:xxbl="http://orbeon.org/oxf/xml/xbl"
                                       xmlns:NumberSupport="java:org.orbeon.xbl.NumberSupportJava"
                                       id="taxes-control"
                                       bind="taxes-bind">
                                <xf:label ref="$form-resources/taxes/label"/>
                                <xf:hint ref="$form-resources/taxes/hint"/>
                                <xf:alert ref="$fr-resources/detail/labels/alert"/>
                            </fr:number>
                        </fr:c>
                        <fr:c x="7" y="3" w="6">
                            <fr:yesno-input xmlns="http://orbeon.org/oxf/xml/form-builder"
                                            xmlns:xxbl="http://orbeon.org/oxf/xml/xbl"
                                            id="confirmed-control"
                                            bind="confirmed-bind"
                                            class="fr-search fr-summary">
                                <xf:label ref="$form-resources/confirmed/label"/>
                                <xf:hint ref="$form-resources/confirmed/hint"/>
                                <xf:alert ref="$fr-resources/detail/labels/alert"/>
                            </fr:yesno-input>
                        </fr:c>
                        <fr:c x="1" y="4" w="6">
                            <fr:date xmlns:xxbl="http://orbeon.org/oxf/xml/xbl"
                                     xmlns:DateSupport="java:org.orbeon.xbl.DateSupportJava"
                                     id="paymentDate-control"
                                     bind="paymentDate-bind">
                                <xf:label ref="$form-resources/paymentDate/label"/>
                                <xf:hint ref="$form-resources/paymentDate/hint"/>
                                <xf:alert ref="$fr-resources/detail/labels/alert"/>
                            </fr:date>
                        </fr:c>
                        <fr:c x="7" y="4" w="6">
                            <xf:select id="invoiceType-control" appearance="full" bind="invoiceType-bind">
                                <xf:label ref="$form-resources/invoiceType/label"/>
                                <xf:hint ref="$form-resources/invoiceType/hint"/>
                                <xf:alert ref="$fr-resources/detail/labels/alert"/>
                                <xf:itemset ref="$form-resources/invoiceType/item">
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