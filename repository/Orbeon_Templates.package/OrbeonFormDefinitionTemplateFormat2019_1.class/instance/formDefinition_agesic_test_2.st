test x
formDefinition_agesic_test_2

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
        <xh:title>Test 2</xh:title>
        <xf:model id="fr-form-model" xxf:expose-xpath-types="true">
            <xf:instance id="fr-form-instance" xxf:exclude-result-prefixes="#all" xxf:index="id">
                <form>
                    <section-normal>
                        <grid-1>
                            <name/>
                            <surname/>
                        </grid-1>
                    </section-normal>
                    <section-repeatable>
                        <section-repeatable-iteration>
                            <grid-2>
                                <phones/>
                            </grid-2>
                            <section-sub>
                                <grid-3>
                                    <address/>
                                </grid-3>
                            </section-sub>
                        </section-repeatable-iteration>
                    </section-repeatable>
                </form>
            </xf:instance>
            <xf:bind id="fr-form-binds" ref="instance(''fr-form-instance'')">
                <xf:bind id="section-normal-bind" name="section-normal" ref="section-normal">
                    <xf:bind id="grid-1-bind" ref="grid-1" name="grid-1">
                        <xf:bind id="name-bind" name="name" ref="name"/>
                        <xf:bind id="surname-bind" ref="surname" name="surname"/>
                    </xf:bind>
                </xf:bind>
                <xf:bind id="section-repeatable-bind" ref="section-repeatable" name="section-repeatable">
                    <xf:bind id="section-repeatable-iteration-bind" ref="section-repeatable-iteration"
                             name="section-repeatable-iteration">
                        <xf:bind id="grid-2-bind" ref="grid-2" name="grid-2">
                            <xf:bind id="phones-bind" ref="phones" name="phones"/>
                        </xf:bind>
                        <xf:bind id="section-sub-bind" ref="section-sub" name="section-sub">
                            <xf:bind id="grid-3-bind" ref="grid-3" name="grid-3">
                                <xf:bind id="address-bind" ref="address" name="address"/>
                            </xf:bind>
                        </xf:bind>
                    </xf:bind>
                </xf:bind>
            </xf:bind>
            <xf:instance xxf:readonly="true" id="fr-form-metadata" xxf:exclude-result-prefixes="#all">
                <metadata>
                    <application-name>agesic</application-name>
                    <updated-with-version>2020.1.1.202102012142 PE</updated-with-version>
                    <form-name>test-2</form-name>
                    <title xml:lang="en">Test 2</title>
                    <description xml:lang="en">Test 2</description>
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
                        <address>
                            <label>Address</label>
                            <hint/>
                        </address>
                        <phones>
                            <label>Phones</label>
                            <hint/>
                        </phones>
                        <section-sub>
                            <label>Extra data</label>
                            <help/>
                        </section-sub>
                        <section-normal>
                            <label>Normal Section</label>
                        </section-normal>
                        <section-repeatable>
                            <label>Repeatable Section</label>
                            <help/>
                        </section-repeatable>
                        <name>
                            <label>Name</label>
                            <hint/>  
                        </name>
                        <surname>
                            <label>Surname</label>
                            <hint/>
                        </surname>
                    </resource>
                </resources>
            </xf:instance>
            <xf:instance xxf:readonly="true" xxf:exclude-result-prefixes="#all"
                         id="section-repeatable-template">
                <section-repeatable-iteration>
                    <grid-2>
                        <phones/>
                    </grid-2>
                    <section-sub>
                        <grid-3>
                            <address/>
                        </grid-3>
                    </section-sub>
                </section-repeatable-iteration>
            </xf:instance>
        </xf:model>
    </xh:head>
    <xh:body>
        <fr:view>
            <fr:body xmlns:p="http://www.orbeon.com/oxf/pipeline" xmlns:xbl="http://www.w3.org/ns/xbl"
                     xmlns:oxf="http://www.orbeon.com/oxf/processors">
                <fr:section id="section-normal-control" bind="section-normal-bind">
                    <xf:label ref="$form-resources/section-normal/label"/>
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
                    </fr:grid>
                </fr:section>
                <fr:section id="section-repeatable-control" bind="section-repeatable-bind" repeat="content"
                            min="1"
                            template="instance(''section-repeatable-template'')">
                    <xf:label ref="$form-resources/section-repeatable/label"/>
                    <fr:grid id="grid-2-grid" bind="grid-2-bind">
                        <fr:c y="1" x="1" w="12">
                                <xf:input id="phones-control" bind="phones-bind">
                                    <xf:label ref="$form-resources/phones/label"/>
                                    <xf:hint ref="$form-resources/phones/hint"/>
                                    <xf:alert ref="$fr-resources/detail/labels/alert"/>
                                </xf:input>
                            </fr:c>
                    </fr:grid>
                    <fr:section id="section-sub-control" bind="section-sub-bind">
                        <xf:label ref="$form-resources/section-sub/label"/>
                        <fr:grid id="grid-3-grid" bind="grid-3-bind">
                            <fr:c y="1" x="1" w="12">
                                    <xf:input id="address-control" bind="address-bind">
                                        <xf:label ref="$form-resources/address/label"/>
                                        <xf:hint ref="$form-resources/address/hint"/>
                                        <xf:alert ref="$fr-resources/detail/labels/alert"/>
                                    </xf:input>
                                </fr:c>
                        </fr:grid>
                    </fr:section>
                </fr:section>
            </fr:body>
        </fr:view>
    </xh:body>
</xh:html>'