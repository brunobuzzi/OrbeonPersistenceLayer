test x
formDefinition_agesic_test_3

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
        <xh:title>Test 3</xh:title>
        <xf:model id="fr-form-model" xxf:expose-xpath-types="true">
            <xf:instance id="fr-form-instance" xxf:exclude-result-prefixes="#all" xxf:index="id">
                <form>
                    <main-section>
                        <main-section-iteration>
                            <grid-1>
                                <name/>
                            </grid-1>
                            <grid-4>
                                <grid-4-iteration>
                                    <surname/>
                                </grid-4-iteration>
                            </grid-4>
                            <section-7>
                                <section-7-iteration>
                                    <grid-2>
                                        <address/>
                                    </grid-2>
                                    <grid-10>
                                        <grid-10-iteration>
                                            <phone/>
                                        </grid-10-iteration>
                                    </grid-10>
                                    <section-13>
                                        <section-13-iteration>
                                            <grid-3>
                                                <housePlace/>
                                            </grid-3>
                                            <grid-16>
                                                <grid-16-iteration>
                                                    <placeElements/>
                                                </grid-16-iteration>
                                            </grid-16>
                                        </section-13-iteration>
                                    </section-13>
                                </section-7-iteration>
                            </section-7>
                        </main-section-iteration>     
                    </main-section>
                </form>
            </xf:instance>
            <xf:bind id="fr-form-binds" ref="instance(''fr-form-instance'')">
                <xf:bind id="main-section-bind" name="main-section" ref="main-section">
                    <xf:bind id="main-section-iteration-bind" ref="main-section-iteration"
                             name="main-section-iteration">
                        <xf:bind id="grid-1-bind" ref="grid-1" name="grid-1">
                            <xf:bind id="name-bind" name="name" ref="name"/>
                        </xf:bind>
                        <xf:bind id="grid-4-bind" ref="grid-4" name="grid-4">
                            <xf:bind id="grid-4-iteration-bind" ref="grid-4-iteration" name="grid-4-iteration">
                                <xf:bind id="surname-bind" ref="surname" name="surname"/>
                            </xf:bind>
                        </xf:bind>
                        <xf:bind id="section-7-bind" ref="section-7" name="section-7">
                            <xf:bind id="section-7-iteration-bind" ref="section-7-iteration"
                                     name="section-7-iteration">
                                <xf:bind id="grid-2-bind" ref="grid-2" name="grid-2">
                                    <xf:bind id="address-bind" ref="address" name="address"/>
                                </xf:bind>
                                <xf:bind id="grid-10-bind" ref="grid-10" name="grid-10">
                                    <xf:bind id="grid-10-iteration-bind" ref="grid-10-iteration" name="grid-10-iteration">
                                        <xf:bind id="phone-bind" ref="phone" name="phone"/>
                                    </xf:bind>
                                </xf:bind>
                                <xf:bind id="section-13-bind" ref="section-13" name="section-13">
                                    <xf:bind id="section-13-iteration-bind" ref="section-13-iteration"
                                             name="section-13-iteration">
                                        <xf:bind id="grid-3-bind" ref="grid-3" name="grid-3">
                                            <xf:bind id="housePlace-bind" ref="housePlace" name="housePlace"/>
                                        </xf:bind>
                                        <xf:bind id="grid-16-bind" ref="grid-16" name="grid-16">
                                            <xf:bind id="grid-16-iteration-bind" ref="grid-16-iteration" name="grid-16-iteration">
                                                <xf:bind id="placeElements-bind" ref="placeElements" name="placeElements"/>
                                            </xf:bind>
                                        </xf:bind>
                                    </xf:bind>
                                </xf:bind>
                            </xf:bind>
                        </xf:bind>
                    </xf:bind>    
                </xf:bind>
            </xf:bind>
            <xf:instance xxf:readonly="true" id="fr-form-metadata" xxf:exclude-result-prefixes="#all">
                <metadata>
                    <application-name>agesic</application-name>
                    <updated-with-version>2020.1.1.202102012142 PE</updated-with-version>
                    <form-name>test-3</form-name>
                    <title xml:lang="en">Test 3</title>
                    <description xml:lang="en"/>
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
                        <placeElements>
                            <label>Place Elements</label>
                            <hint/>
                        </placeElements>
                        <housePlace>
                            <label>House Place</label>
                            <hint/>
                        </housePlace>
                        <phone>
                            <label>Phone</label>
                            <hint/>
                        </phone>
                        <section-13>
                            <label>Elements</label>
                            <help/>
                        </section-13>
                        <address>
                            <label>Address</label>
                            <hint/>
                        </address>
                        <surname>
                            <label>Surname</label>
                            <hint>Surname</hint>
                        </surname>
                        <section-7>
                            <label>Addresses</label>
                            <help/>
                        </section-7>
                        <main-section>
                            <label>Main section</label>
                        </main-section>
                        <name>
                            <label>Name</label>
                            <hint/>
                        </name>
                    </resource>
                </resources>
            </xf:instance>
            <xf:instance xxf:readonly="true" xxf:exclude-result-prefixes="#all"
                         id="main-section-template">
                <main-section-iteration>
                    <grid-1>
                        <name/>
                    </grid-1>
                    <grid-4>
                        <grid-4-iteration>
                            <surname/>
                        </grid-4-iteration>
                    </grid-4>
                    <section-7>
                        <section-7-iteration>
                            <grid-2>
                                <address/>
                            </grid-2>
                            <grid-10>
                                <grid-10-iteration>
                                    <phone/>
                                </grid-10-iteration>
                            </grid-10>
                            <section-13>
                                <section-13-iteration>
                                    <grid-3>
                                        <housePlace/>
                                    </grid-3>
                                    <grid-16>
                                        <grid-16-iteration>
                                            <placeElements/>
                                        </grid-16-iteration>
                                    </grid-16>
                                </section-13-iteration>
                            </section-13>
                        </section-7-iteration>
                    </section-7>
                </main-section-iteration>
            </xf:instance>
            <xf:instance xxf:readonly="true" xxf:exclude-result-prefixes="#all" id="grid-4-template">
                <grid-4-iteration>
                    <surname/>
                </grid-4-iteration>
            </xf:instance>
            <xf:instance xxf:readonly="true" xxf:exclude-result-prefixes="#all" id="section-7-template">
                <section-7-iteration>
                    <grid-2>
                        <address/>
                    </grid-2>
                    <grid-10>
                        <grid-10-iteration>
                            <phone/>
                        </grid-10-iteration>
                    </grid-10>
                    <section-13>
                        <section-13-iteration>
                            <grid-3>
                                <housePlace/>
                            </grid-3>
                            <grid-16>
                                <grid-16-iteration>
                                    <placeElements/>
                                </grid-16-iteration>
                            </grid-16>
                        </section-13-iteration>
                    </section-13>
                </section-7-iteration>
            </xf:instance>
            <xf:instance xxf:readonly="true" xxf:exclude-result-prefixes="#all" id="grid-10-template">
                <grid-10-iteration>
                    <phone/>
                </grid-10-iteration>
            </xf:instance>
            <xf:instance xxf:readonly="true" xxf:exclude-result-prefixes="#all" id="section-13-template">
                <section-13-iteration>
                    <grid-3>
                        <housePlace/>
                    </grid-3>
                    <grid-16>
                        <grid-16-iteration>
                            <placeElements/>
                        </grid-16-iteration>
                    </grid-16>
                </section-13-iteration>
            </xf:instance>
            <xf:instance xxf:readonly="true" xxf:exclude-result-prefixes="#all" id="grid-16-template">
                <grid-16-iteration>
                    <placeElements/>
                </grid-16-iteration>
            </xf:instance>
        </xf:model>
    </xh:head>
    <xh:body>
        <fr:view>
            <fr:body xmlns:p="http://www.orbeon.com/oxf/pipeline" xmlns:xbl="http://www.w3.org/ns/xbl"
                     xmlns:oxf="http://www.orbeon.com/oxf/processors">
                <fr:section id="main-section-control" bind="main-section-bind" repeat="content" min="1"
                            template="instance(''main-section-template'')">
                    <xf:label ref="$form-resources/main-section/label"/>
                    <fr:grid id="grid-1-grid" bind="grid-1-bind">
                        <fr:c y="1" x="1" w="12">
                                <xf:input id="name-control" bind="name-bind" class="fr-summary fr-search">
                                    <xf:label ref="$form-resources/name/label"/>
                                    <xf:hint ref="$form-resources/name/hint"/>
                                    <xf:alert ref="$fr-resources/detail/labels/alert"/>
                                </xf:input>
                            </fr:c>
                    </fr:grid>
                    <fr:grid id="grid-4-grid" bind="grid-4-bind" repeat="content" min="1"
                             template="instance(''grid-4-template'')">
                        <fr:c y="1" x="1" w="12">
                                <xf:input id="surname-control" bind="surname-bind">
                                    <xf:label ref="$form-resources/surname/label"/>
                                    <xf:hint ref="$form-resources/surname/hint"/>
                                    <xf:alert ref="$fr-resources/detail/labels/alert"/>
                                </xf:input>
                            </fr:c>
                    </fr:grid>
                    <fr:section id="section-7-control" bind="section-7-bind" repeat="content" min="1"
                                template="instance(''section-7-template'')">
                        <xf:label ref="$form-resources/section-7/label"/>
                        <fr:grid id="grid-2-grid" bind="grid-2-bind">
                            <fr:c y="1" x="1" w="12">
                                    <xf:input id="address-control" bind="address-bind">
                                        <xf:label ref="$form-resources/address/label"/>
                                        <xf:hint ref="$form-resources/address/hint"/>
                                        <xf:alert ref="$fr-resources/detail/labels/alert"/>
                                    </xf:input>
                                </fr:c>
                        </fr:grid>
                        <fr:grid id="grid-10-grid" bind="grid-10-bind" repeat="content" min="1"
                                 template="instance(''grid-10-template'')">
                            <fr:c y="1" x="1" w="12">
                                    <xf:input id="phone-control" bind="phone-bind">
                                        <xf:label ref="$form-resources/phone/label"/>
                                        <xf:hint ref="$form-resources/phone/hint"/>
                                        <xf:alert ref="$fr-resources/detail/labels/alert"/>
                                    </xf:input>
                                </fr:c>
                        </fr:grid>
                        <fr:section id="section-13-control" bind="section-13-bind" repeat="content" min="1"
                                    template="instance(''section-13-template'')">
                            <xf:label ref="$form-resources/section-13/label"/>
                            <fr:grid id="grid-3-grid" bind="grid-3-bind">
                                <fr:c y="1" x="1" w="12">
                                        <xf:input id="housePlace-control" bind="housePlace-bind">
                                            <xf:label ref="$form-resources/housePlace/label"/>
                                            <xf:hint ref="$form-resources/housePlace/hint"/>
                                            <xf:alert ref="$fr-resources/detail/labels/alert"/>
                                        </xf:input>
                                    </fr:c>
                            </fr:grid>
                            <fr:grid id="grid-16-grid" bind="grid-16-bind" repeat="content" min="1"
                                     template="instance(''grid-16-template'')">
                                <fr:c y="1" x="1" w="12">
                                        <xf:input id="placeElements-control" bind="placeElements-bind">
                                            <xf:label ref="$form-resources/placeElements/label"/>
                                            <xf:hint ref="$form-resources/placeElements/hint"/>
                                            <xf:alert ref="$fr-resources/detail/labels/alert"/>
                                        </xf:input>
                                    </fr:c>
                            </fr:grid>
                        </fr:section>
                    </fr:section>
                </fr:section>
            </fr:body>
        </fr:view>
    </xh:body>
</xh:html>'