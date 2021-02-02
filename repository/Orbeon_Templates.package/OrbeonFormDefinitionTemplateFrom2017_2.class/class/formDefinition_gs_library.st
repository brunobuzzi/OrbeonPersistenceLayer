issue389
formDefinition_gs_library
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
        <xh:title>Library</xh:title>
        <xf:model id="fr-form-model" xxf:expose-xpath-types="true" xxf:analysis.calculate="true">

            
            <xf:instance id="fr-form-instance" xxf:exclude-result-prefixes="#all" xxf:index="id">
                <form>
                    <section-1>
                        <grid-1>
                            <name/>
                            <surname/>
                        </grid-1>
                        
                    </section-1>
                    <section-2>
                        <section-2-iteration>
                            <grid-2>
                                <number/>
                            </grid-2>
                        </section-2-iteration>
                    </section-2>
                    <section-3>
                        <grid-5>
                            <country/>
                        </grid-5>
                        <section-4>
                            <grid-4>
                                <grid-4-iteration>
                                    <city/>
                                </grid-4-iteration>
                            </grid-4>
                        </section-4>
                    </section-3>
                </form>
            </xf:instance>

            
            <xf:bind id="fr-form-binds" ref="instance(''fr-form-instance'')">
                <xf:bind id="section-1-bind" name="section-1" ref="section-1">
                    <xf:bind id="grid-1-bind" ref="grid-1" name="grid-1">
                        <xf:bind id="name-bind" name="name" ref="name" xxf:whitespace="trim"/>
                        <xf:bind id="surname-bind" ref="surname" name="surname" xxf:whitespace="trim"/>
                    </xf:bind>
                    
                </xf:bind>
                <xf:bind id="section-2-bind" ref="section-2" name="section-2">
                    <xf:bind id="section-2-iteration-bind" ref="section-2-iteration"
                             name="section-2-iteration">
                        <xf:bind id="grid-2-bind" ref="grid-2" name="grid-2">
                            <xf:bind id="number-bind" ref="number" name="number" type="xf:decimal"/>
                        </xf:bind>
                    </xf:bind>
                </xf:bind>
                <xf:bind id="section-3-bind" ref="section-3" name="section-3">
                    <xf:bind id="grid-5-bind" ref="grid-5" name="grid-5">
                        <xf:bind id="country-bind" ref="country" name="country" xxf:whitespace="trim"/>
                    </xf:bind>
                    <xf:bind id="section-4-bind" ref="section-4" name="section-4">
                        <xf:bind id="grid-4-bind" ref="grid-4" name="grid-4">
                            <xf:bind id="grid-4-iteration-bind" ref="grid-4-iteration" name="grid-4-iteration">
                                <xf:bind id="city-bind" ref="city" name="city" xxf:whitespace="trim"/>
                            </xf:bind>
                        </xf:bind>
                    </xf:bind>
                </xf:bind>
            </xf:bind>

            
            <xf:instance id="fr-form-metadata" xxf:readonly="true" xxf:exclude-result-prefixes="#all">
                <metadata>
                    <application-name>gs</application-name>
                    <form-name>library</form-name>
                    <title xml:lang="en">Library</title>
                    <description xml:lang="en"/>
                    <created-with-version>2020.1.202012300129 PE</created-with-version>
                    <updated-with-version>2020.1.202012300129 PE</updated-with-version>
                    <migration version="4.8.0">[{ "path": "section-3/section-4/grid-4", "iteration-name": "grid-4-iteration" }]</migration>
                    <migration version="2019.1.0">{"migrations":[{"containerPath":[{"value":"section-1"}],"newGridElem":{"value":"grid-1"},"afterElem":null,"content":[{"value":"name"},{"value":"surname"}],"topLevel":true},{"containerPath":[{"value":"section-2"},{"value":"section-2-iteration"}],"newGridElem":{"value":"grid-2"},"afterElem":null,"content":[{"value":"number"}],"topLevel":true},{"containerPath":[{"value":"section-3"}],"newGridElem":{"value":"grid-5"},"afterElem":null,"content":[{"value":"country"}],"topLevel":true}]}</migration>
                    <available>true</available>
                    <library-versions>
                        <app>1</app>
                    </library-versions>
                </metadata>
            </xf:instance>

            
            <xf:instance id="fr-form-attachments" xxf:exclude-result-prefixes="#all">
                <attachments/>
            </xf:instance>

            
            <xf:instance xxf:readonly="true" id="fr-form-resources" xxf:exclude-result-prefixes="#all">
                <resources>
                    <resource xml:lang="en">
                        <city>
                            <label>City</label>
                            <hint/>
                        </city>
                        <country>
                            <label>Country</label>
                            <hint/>
                        </country>
                        <section-4>
                            <label>Cities</label>
                            <help/>
                        </section-4>
                        <number>
                            <label>Number</label>
                            <hint/>
                        </number>
                        <section-1>
                            <label>Name</label>
                        </section-1>
                        <section-2>
                            <label>Number</label>
                        </section-2>
                        <section-3>
                            <label>Country</label>
                            <help/>
                        </section-3>
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
            <xf:instance xxf:readonly="true" xxf:exclude-result-prefixes="#all" id="section-2-template">
                <section-2-iteration>
                    <grid-2>
                        <number/>
                    </grid-2>
                </section-2-iteration>
            </xf:instance>
            <xf:instance xxf:readonly="true" xxf:exclude-result-prefixes="#all" id="grid-4-template">
                <grid-4-iteration>
                    <city/>
                </grid-4-iteration>
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
                        <fr:c x="7" y="1" w="6" h="1">
                            <xf:input id="surname-control" bind="surname-bind" class="fr-summary fr-search">
                                <xf:label ref="$form-resources/surname/label"/>
                                <xf:hint ref="$form-resources/surname/hint"/>
                                <xf:alert ref="$fr-resources/detail/labels/alert"/>
                        
                        
                            </xf:input>
                        </fr:c>
                    </fr:grid>
                </fr:section>
                <fr:section id="section-2-section" bind="section-2-bind" repeat="content" min="1"
                            template="instance(''section-2-template'')"
                            apply-defaults="true"
                            fb:initial-iterations="first">
                    <xf:label ref="$form-resources/section-2/label"/>
                    <fr:grid id="grid-2-grid" bind="grid-2-bind">
                        <fr:c x="1" y="1" w="12">
                            <fr:number xmlns="http://orbeon.org/oxf/xml/form-builder"
                                       xmlns:xxbl="http://orbeon.org/oxf/xml/xbl"
                                       xmlns:NumberSupport="java:org.orbeon.xbl.NumberSupportJava"
                                       id="number-control"
                                       bind="number-bind"
                                       class="fr-summary fr-search">
                                <xf:label ref="$form-resources/number/label"/>
                                <xf:hint ref="$form-resources/number/hint"/>
                                <xf:alert ref="$fr-resources/detail/labels/alert"/>
                        
                        
                            </fr:number>
                        </fr:c>
                    </fr:grid>
                </fr:section>
                <fr:section id="section-3-section" bind="section-3-bind">
                    <xf:label ref="$form-resources/section-3/label"/>
                    <fr:grid id="grid-5-grid" bind="grid-5-bind">
                        <fr:c x="1" y="1" w="12">
                            <xf:input id="country-control" bind="country-bind" class="fr-summary fr-search">
                                <xf:label ref="$form-resources/country/label"/>
                                <xf:hint ref="$form-resources/country/hint"/>
                                <xf:alert ref="$fr-resources/detail/labels/alert"/>
                        
                        
                            </xf:input>
                        </fr:c>
                    </fr:grid>
                    <fr:section id="section-4-section" bind="section-4-bind">
                        <xf:label ref="$form-resources/section-4/label"/>
                        <fr:grid id="grid-4-grid" bind="grid-4-bind" repeat="content" min="1"
                                 template="instance(''grid-4-template'')"
                                 apply-defaults="true"
                                 fb:initial-iterations="first">
                            <fr:c x="1" y="1" w="12">
                                <xf:input id="city-control" bind="city-bind">
                                    <xf:label ref="$form-resources/city/label"/>
                                    <xf:hint ref="$form-resources/city/hint"/>
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