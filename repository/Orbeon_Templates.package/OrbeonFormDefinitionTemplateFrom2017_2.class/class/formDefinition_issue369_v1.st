issue369
formDefinition_issue369_v1

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
         fr:data-format-version="4.0.0">
    <xh:head>
        <xh:title>Manual Form</xh:title>
        <xf:model id="fr-form-model" xxf:expose-xpath-types="true" xxf:analysis.calculate="true">      
            <xf:instance id="fr-form-instance" xxf:exclude-result-prefixes="#all" xxf:index="id">
                <form>
                    <section-1>
                        <grid-1>
                            <description/>
                        </grid-1>
                    </section-1>
                    <section-2>
                        <grid-3>
                            <grid-3-iteration>
                                <type/>
                                <date/>
                                <quantity/>
                                <price/>
                                <available/>
                                <currency/>
                            </grid-3-iteration>
                        </grid-3>
                    </section-2>
                </form>
            </xf:instance>
            <xf:bind id="fr-form-binds" ref="instance(''fr-form-instance'')">
                <xf:bind id="section-1-bind" name="section-1" ref="section-1">
                    <xf:bind id="grid-1-bind" ref="grid-1" name="grid-1">
                        <xf:bind id="description-bind" name="description" ref="description"
                                 xxf:whitespace="trim"/>
                    </xf:bind>
                </xf:bind>
                <xf:bind id="section-2-bind" ref="section-2" name="section-2">
                    <xf:bind id="grid-3-bind" ref="grid-3" name="grid-3">
                        <xf:bind id="grid-3-iteration-bind" ref="grid-3-iteration" name="grid-3-iteration">
                            <xf:bind id="type-bind" ref="type" name="type"/>
                            <xf:bind id="date-bind" ref="date" name="date" type="xf:date"
                                     xxf:default="current-date()"/>
                            <xf:bind id="quantity-bind" ref="quantity" name="quantity" type="xf:integer"/>
                            <xf:bind id="price-bind" ref="price" name="price" type="xf:decimal"/>
                            <xf:bind id="available-bind" ref="available" name="available" type="xf:boolean"/>
                            <xf:bind id="currency-bind" ref="currency" name="currency"/>
                        </xf:bind>
                    </xf:bind>
                </xf:bind>
            </xf:bind>
            <xf:instance id="fr-form-metadata" xxf:readonly="true" xxf:exclude-result-prefixes="#all">
                <metadata>
                    <application-name>agesic</application-name>
                    <form-name>manual-form</form-name>
                    <title xml:lang="en">Manual Form</title>
                    <description xml:lang="en">Manual Form Details</description>
                    <created-with-version>2019.2.1.202002282212 PE</created-with-version>
                    <updated-with-version>2019.2.1.202002282212 PE</updated-with-version>
                    <migration version="4.8.0">[{ "path": "section-2/grid-3", "iteration-name": "grid-3-iteration" }]</migration>
                    <migration version="2019.1.0">{"migrations":[{"containerPath":[{"value":"section-1"}],"newGridElem":{"value":"grid-1"},"afterElem":null,"content":[{"value":"description"}],"topLevel":true}]}</migration>
                    <available>true</available>
                </metadata>
            </xf:instance>
            <xf:instance id="fr-form-attachments" xxf:exclude-result-prefixes="#all">
                <attachments/>
            </xf:instance>
            <xf:instance xxf:readonly="true" id="fr-form-resources" xxf:exclude-result-prefixes="#all">
                <resources>
                    <resource xml:lang="en">
                        <type>
                            <label>Type</label>
                            <hint/>
                            <item>
                                <label>Homemade Bath</label>
            
                                <value>homemade-bath</value>
                            </item>
                            <item>
                                <label>Garden-Starter Supplies</label>
            
                                <value>garden-starter-supplies</value>
                            </item>
                            <item>
                                <label>Crafts &amp; Handmade Items</label>
            
                                <value>crafts-handmade-items</value>
                            </item>
                            <item>
                                <label>Baked Goods</label>
            
                                <value>baked-goods</value>
                            </item>
                            <item>
                                <label>Home-Canned Goods</label>
            
                                <value>home-canned-goods</value>
                            </item>
                        </type>
                        <date>
                            <label>Date</label>
                            <hint/>
                        </date>
                        <quantity>
                            <label>Quantity</label>
                            <hint/>
                        </quantity>
                        <price>
                            <label>Price</label>
                            <hint/>
                        </price>
                        <available>
                            <label>Available</label>
                            <hint/>
                        </available>
                        <currency>
                            <label>Currency</label>
                            <hint/>
                            <item>
                                <label>USD</label>
                                <hint/>
                                <value>usd</value>
                            </item>
                            <item>
                                <label>EUR</label>
                                <hint/>
                                <value>eur</value>
                            </item>
                            <item>
                                <label>YEN</label>
                                <hint/>
                                <value>yen</value>
                            </item>
                        </currency>
                        <section-1>
                            <label>Name</label>
                        </section-1>
                        <section-2>
                            <label>Invoice</label>
                            <help/>
                        </section-2>
                        <description>
                            <label/>
                            <hint/>
                            
                        </description>
                    </resource>
                </resources>
            </xf:instance>
            <xf:instance xxf:readonly="true" xxf:exclude-result-prefixes="#all" id="grid-3-template">
                <grid-3-iteration>
                    <type/>
                    <date/>
                    <quantity/>
                    <price/>
                    <available/>
                    <currency/>
                </grid-3-iteration>
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
                        <fr:c y="1" x="1" w="12">
                                <xf:input id="description-control" bind="description-bind" class="fr-summary fr-search">
                                    <xf:label ref="$form-resources/description/label"/>
                                    <xf:hint ref="$form-resources/description/hint"/>
                                <xf:alert ref="$fr-resources/detail/labels/alert"/>
                                    
                                </xf:input>
                            </fr:c>
                    </fr:grid>
                </fr:section>
                <fr:section id="section-2-section" bind="section-2-bind">
                    <xf:label ref="$form-resources/section-2/label"/>
                    <fr:grid id="grid-3-grid" bind="grid-3-bind" repeat="content" min="1"
                             template="instance(''grid-3-template'')"
                             apply-defaults="true"
                             fb:initial-iterations="first">
                        <fr:c x="1" y="1" w="12">
                            <xf:select1 id="type-control" bind="type-bind" class="fr-summary fr-search"
                                        appearance="dropdown">
                                <xf:label ref="$form-resources/type/label"/>
                                <xf:hint ref="$form-resources/type/hint"/>
                                <xf:alert ref="$fr-resources/detail/labels/alert"/>
                                <xf:itemset ref="$form-resources/type/item">
                                    <xf:label ref="label"/>
                                    <xf:value ref="value"/>
                                </xf:itemset>
                            </xf:select1>
                        </fr:c>
                        <fr:c x="1" y="2" w="12">
                            <fr:date xmlns:xxbl="http://orbeon.org/oxf/xml/xbl"
                                     xmlns:DateSupport="java:org.orbeon.xbl.DateSupportJava"
                                     id="date-control"
                                     bind="date-bind"
                                     class="fr-summary fr-search">
                                <xf:label ref="$form-resources/date/label"/>
                                <xf:hint ref="$form-resources/date/hint"/>
                                <xf:alert ref="$fr-resources/detail/labels/alert"/>
                            </fr:date>
                        </fr:c>
                        <fr:c x="1" y="3" w="12">
                            <fr:number xmlns="http://orbeon.org/oxf/xml/form-builder"
                                       xmlns:xxbl="http://orbeon.org/oxf/xml/xbl"
                                       xmlns:NumberSupport="java:org.orbeon.xbl.NumberSupportJava"
                                       id="quantity-control"
                                       bind="quantity-bind">
                                <xf:label ref="$form-resources/quantity/label"/>
                                <xf:hint ref="$form-resources/quantity/hint"/>
                                <xf:alert ref="$fr-resources/detail/labels/alert"/>
                            </fr:number>
                        </fr:c>
                        <fr:c x="1" y="4" w="12">
                            <fr:number xmlns="http://orbeon.org/oxf/xml/form-builder"
                                       xmlns:xxbl="http://orbeon.org/oxf/xml/xbl"
                                       xmlns:NumberSupport="java:org.orbeon.xbl.NumberSupportJava"
                                       id="price-control"
                                       bind="price-bind"
                                       class="fr-summary fr-search">
                                <xf:label ref="$form-resources/price/label"/>
                                <xf:hint ref="$form-resources/price/hint"/>
                                <xf:alert ref="$fr-resources/detail/labels/alert"/>
                            </fr:number>
                        </fr:c>
                        <fr:c x="1" y="5" w="12">
                            <fr:yesno-input xmlns="http://orbeon.org/oxf/xml/form-builder"
                                            xmlns:xxbl="http://orbeon.org/oxf/xml/xbl"
                                            id="available-control"
                                            bind="available-bind">
                                <xf:label ref="$form-resources/available/label"/>
                                <xf:hint ref="$form-resources/available/hint"/>
                                <xf:alert ref="$fr-resources/detail/labels/alert"/>
                            </fr:yesno-input>
                        </fr:c>
                        <fr:c x="1" y="6" w="12">
                            <xf:select id="currency-control" appearance="full" bind="currency-bind"
                                       class="fr-summary fr-search">
                                <xf:label ref="$form-resources/currency/label"/>
                                <xf:hint ref="$form-resources/currency/hint"/>
                                <xf:alert ref="$fr-resources/detail/labels/alert"/>
                                <xf:itemset ref="$form-resources/currency/item">
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