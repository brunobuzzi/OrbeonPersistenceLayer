custom iteration
formDefinition_agesic_test_section_interaction_name

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
        <xh:title>Test Section Interation Name</xh:title>
        <xf:model id="fr-form-model" xxf:expose-xpath-types="true">
            <xf:instance id="fr-form-instance" xxf:exclude-result-prefixes="#all" xxf:index="id">
                <form>
                    <userInfoSection>
                        <custom-user-info-iteration>
                            <grid-1>
                                <name/>
                                <surname/>
                            </grid-1>
                            <grid-mobile>
                                <custom-mobile-iteration>
                                    <mobile/>
                                </custom-mobile-iteration>
                            </grid-mobile>
                        </custom-user-info-iteration>
                    </userInfoSection>
                    <section-8>
                        <section-8-iteration>
                            <grid-2>
                                <code/>
                            </grid-2>
                            <grid-amount>
                                <grid-amount-iteration>
                                    <mount/>
                                </grid-amount-iteration>
                            </grid-amount>
                        </section-8-iteration>
                    </section-8>
                    <section-grid>
                        <grid-15>
                            <number-iteration>
                                <number/>
                            </number-iteration>
                        </grid-15>
                    </section-grid>
                </form>
            </xf:instance>
            <xf:bind id="fr-form-binds" ref="instance(''fr-form-instance'')">
                <xf:bind id="userInfoSection-bind" name="userInfoSection" ref="userInfoSection">
                    <xf:bind id="custom-user-info-iteration-bind" ref="custom-user-info-iteration"
                             name="custom-user-info-iteration">
                        <xf:bind id="grid-1-bind" ref="grid-1" name="grid-1">
                            <xf:bind id="name-bind" name="name" ref="name"/>
                            <xf:bind id="surname-bind" ref="surname" name="surname"/>
                        </xf:bind>
                        <xf:bind id="grid-mobile-bind" ref="grid-mobile" name="grid-mobile">
                            <xf:bind id="custom-mobile-iteration-bind" ref="custom-mobile-iteration"
                                     name="custom-mobile-iteration">
                                <xf:bind id="mobile-bind" ref="mobile" name="mobile"/>
                            </xf:bind>
                        </xf:bind>
                    </xf:bind>
                </xf:bind>
                <xf:bind id="section-8-bind" ref="section-8" name="section-8">
                    <xf:bind id="section-8-iteration-bind" ref="section-8-iteration"
                             name="section-8-iteration">
                        <xf:bind id="grid-2-bind" ref="grid-2" name="grid-2">
                            <xf:bind id="code-bind" ref="code" name="code"/>
                        </xf:bind>
                        <xf:bind id="grid-amount-bind" ref="grid-amount" name="grid-amount">
                            <xf:bind id="grid-amount-iteration-bind" ref="grid-amount-iteration"
                                     name="grid-amount-iteration">
                                <xf:bind id="mount-bind" ref="mount" name="mount"/>
                            </xf:bind>
                        </xf:bind>
                    </xf:bind>
                </xf:bind>
                <xf:bind id="section-grid-bind" ref="section-grid" name="section-grid">
                    <xf:bind id="grid-15-bind" ref="grid-15" name="grid-15">
                        <xf:bind id="number-iteration-bind" ref="number-iteration" name="number-iteration">
                            <xf:bind id="number-bind" ref="number" name="number"/>
                        </xf:bind>
                    </xf:bind>
                </xf:bind>
            </xf:bind>
            <xf:instance xxf:readonly="true" id="fr-form-metadata" xxf:exclude-result-prefixes="#all">
                <metadata>
                    <application-name>agesic</application-name>
                    <updated-with-version>2020.1.1.202102012142 PE</updated-with-version>
                    <form-name>test-section-interation-name</form-name>
                    <title xml:lang="en">Test Section Interation Name</title>
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
                        <number>
                            <label>Number</label>
                            <hint/>
                        </number>
                        <mount>
                            <label>Amount</label>
                            <hint/>
                        </mount>
                        <section-grid>
                            <label>Grid Test</label>
                            <help/>
                        </section-grid>
                        <code>
                            <label>Code</label>
                            <hint/>
                        </code>
                        <mobile>
                            <label>Mobile</label>
                            <hint/>
                        </mobile>
                        <userInfoSection>
                            <label>User Info</label>
                        </userInfoSection>
                        <section-8>
                            <label>Incomes</label>
                            <help/>
                        </section-8>
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
                         id="userInfoSection-template">
                <custom-user-info-iteration>
                    <grid-1>
                        <name/>
                        <surname/>
                    </grid-1>
                    <grid-mobile>
                        <custom-mobile-iteration>
                            <mobile/>
                        </custom-mobile-iteration>
                    </grid-mobile>
                </custom-user-info-iteration>
            </xf:instance>
            <xf:instance xxf:readonly="true" xxf:exclude-result-prefixes="#all"
                         id="grid-mobile-template">
                <custom-mobile-iteration>
                    <mobile/>
                </custom-mobile-iteration>
            </xf:instance>
            <xf:instance xxf:readonly="true" xxf:exclude-result-prefixes="#all"
                         id="grid-amount-template">
                <grid-amount-iteration>
                    <mount/>
                </grid-amount-iteration>
            </xf:instance>
            <xf:instance xxf:readonly="true" xxf:exclude-result-prefixes="#all" id="section-8-template">
                <section-8-iteration>
                    <grid-2>
                        <code/>
                    </grid-2>
                    <grid-amount>
                        <grid-amount-iteration>
                            <mount/>
                        </grid-amount-iteration>
                    </grid-amount>
                </section-8-iteration>
            </xf:instance>
            <xf:instance xxf:readonly="true" xxf:exclude-result-prefixes="#all" id="grid-15-template">
                <number-iteration>
                    <number/>
                </number-iteration>
            </xf:instance>
        </xf:model>
    </xh:head>
    <xh:body>
        <fr:view>
            <fr:body xmlns:p="http://www.orbeon.com/oxf/pipeline" xmlns:xbl="http://www.w3.org/ns/xbl"
                     xmlns:oxf="http://www.orbeon.com/oxf/processors">
                <fr:section id="userInfoSection-control" bind="userInfoSection-bind" repeat="content"
                            min="1"
                            template="instance(''userInfoSection-template'')">
                    <xf:label ref="$form-resources/userInfoSection/label"/>
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
                    <fr:grid id="grid-mobile-control" bind="grid-mobile-bind" repeat="content" min="1"
                             template="instance(''grid-mobile-template'')">
                        <fr:c y="1" x="1" w="12">
                                <xf:input id="mobile-control" bind="mobile-bind" class="fr-search">
                                    <xf:label ref="$form-resources/mobile/label"/>
                                    <xf:hint ref="$form-resources/mobile/hint"/>
                                    <xf:alert ref="$fr-resources/detail/labels/alert"/>                                                
                                </xf:input>
                            </fr:c>
                    </fr:grid>
                </fr:section>
                <fr:section id="section-8-control" bind="section-8-bind" repeat="content" min="1"
                            template="instance(''section-8-template'')">
                    <xf:label ref="$form-resources/section-8/label"/>
                    <fr:grid id="grid-2-grid" bind="grid-2-bind">
                        <fr:c y="1" x="1" w="12">
                                <xf:input id="code-control" bind="code-bind" class="fr-summary fr-search">
                                    <xf:label ref="$form-resources/code/label"/>
                                    <xf:hint ref="$form-resources/code/hint"/>
                                    <xf:alert ref="$fr-resources/detail/labels/alert"/>                                            
                                </xf:input>
                            </fr:c>
                    </fr:grid>
                    <fr:grid id="grid-amount-control" bind="grid-amount-bind" repeat="content" min="1"
                             template="instance(''grid-amount-template'')">
                        <fr:c y="1" x="1" w="12">
                                <xf:input id="mount-control" bind="mount-bind" class="fr-search">
                                    <xf:label ref="$form-resources/mount/label"/>
                                    <xf:hint ref="$form-resources/mount/hint"/>
                                    <xf:alert ref="$fr-resources/detail/labels/alert"/>                                            
                                </xf:input>
                            </fr:c>
                    </fr:grid>
                </fr:section>
                <fr:section id="section-grid-control" bind="section-grid-bind">
                    <xf:label ref="$form-resources/section-grid/label"/>
                    <fr:grid id="grid-15-grid" bind="grid-15-bind" repeat="content" min="1"
                             template="instance(''grid-15-template'')">
                        <fr:c y="1" x="1" w="12">
                                <xf:input id="number-control" bind="number-bind">
                                    <xf:label ref="$form-resources/number/label"/>
                                    <xf:hint ref="$form-resources/number/hint"/>
                                    <xf:alert ref="$fr-resources/detail/labels/alert"/>                                            
                                </xf:input>
                            </fr:c>
                    </fr:grid>
                </fr:section>
            </fr:body>
        </fr:view>
    </xh:body>
</xh:html>'