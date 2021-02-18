issue385-393
publishedFormDefinition_issue385

	^'<?xml version="1.0" encoding="UTF-8"?><xh:html xmlns:xh="http://www.w3.org/1999/xhtml" xmlns:xf="http://www.w3.org/2002/xforms" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:ev="http://www.w3.org/2001/xml-events" xmlns:xi="http://www.w3.org/2001/XInclude" xmlns:xxi="http://orbeon.org/oxf/xml/xinclude" xmlns:xxf="http://orbeon.org/oxf/xml/xforms" xmlns:map="http://www.w3.org/2005/xpath-functions/map" xmlns:array="http://www.w3.org/2005/xpath-functions/array" xmlns:exf="http://www.exforms.org/exf/1-0" xmlns:fr="http://orbeon.org/oxf/xml/form-runner" xmlns:saxon="http://saxon.sf.net/" xmlns:sql="http://orbeon.org/oxf/xml/sql" xmlns:soap="http://schemas.xmlsoap.org/soap/envelope/" xmlns:fb="http://orbeon.org/oxf/xml/form-builder" fr:data-format-version="4.0.0">
    <xh:head>
        <xh:title>Issue 385</xh:title>
        <xf:model id="fr-form-model" xxf:expose-xpath-types="true" xxf:analysis.calculate="true">

            
            <xf:instance id="fr-form-instance" xxf:exclude-result-prefixes="#all" xxf:index="id">
                <form>
                    <section-2><grid-1>
                            <name/>
                            <surname/>
                        </grid-1></section-2>
                </form>
            </xf:instance>

            
            <xf:bind id="fr-form-binds" ref="instance(''fr-form-instance'')">
                <xf:bind id="section-2-bind" ref="section-2" name="section-2"/>
            </xf:bind>

            
            <xf:instance id="fr-form-metadata" xxf:readonly="true" xxf:exclude-result-prefixes="#all">
                <metadata>
                    <application-name>gs</application-name>
                    <form-name>issue-385</form-name>
                    <title xml:lang="en">Issue 385</title>
                    <description xml:lang="en"/><created-with-version>2020.1.1.202102012142 PE</created-with-version><library-versions/>
                <updated-with-version>2020.1.1.202102012142 PE</updated-with-version><migration version="2019.1.0">{"migrations":[{"containerPath":[{"value":"section-2"}],"newGridElem":{"value":"grid-1"},"afterElem":null,"content":[{"value":"name"},{"value":"surname"}],"topLevel":false}]}</migration><available>true</available></metadata>
            </xf:instance>

            
            <xf:instance id="fr-form-attachments" xxf:exclude-result-prefixes="#all">
                <attachments/>
            </xf:instance>

            
            <xf:instance xxf:readonly="true" id="fr-form-resources" xxf:exclude-result-prefixes="#all">
                <resources>
                    <resource xml:lang="en">
                        <section-2><label>Name</label><help/></section-2>
                        
                    </resource>
                </resources>
            </xf:instance>

        </xf:model><xbl:xbl xmlns:xbl="http://www.w3.org/ns/xbl" xmlns:fbf="java:org.orbeon.oxf.fb.FormBuilderXPathApi" xmlns:xxbl="http://orbeon.org/oxf/xml/xbl" xmlns:frf="java:org.orbeon.oxf.fr.FormRunner" xmlns:component="http://orbeon.org/oxf/xml/form-builder/component/gs/library" xmlns:p="http://www.orbeon.com/oxf/pipeline"><xbl:binding id="gs-section-1-component" element="component|section-1" class="fr-section-component"><xbl:implementation><xf:model id="section-1-model"><xf:instance id="fr-form-instance" xxbl:mirror="true" xxf:index="id"><empty/></xf:instance><xf:instance id="fr-form-template"><section-1>
                        <grid-1>
                            <name/>
                            <surname/>
                        </grid-1>
                        
                    </section-1></xf:instance><xf:bind id="fr-form-binds" ref="instance(''fr-form-instance'')"><xf:bind id="grid-1-bind" ref="grid-1" name="grid-1">
                        <xf:bind id="name-bind" name="name" ref="name" xxf:whitespace="trim"/>
                        <xf:bind id="surname-bind" ref="surname" name="surname" xxf:whitespace="trim"/>
                    </xf:bind></xf:bind><xf:instance id="fr-form-resources" xxf:readonly="true"><resources><resource xml:lang="en"><section-1>
                            <label>Name</label>
                        </section-1><name>
                            <label>Name</label>
                            <hint/>
                            
                        </name><surname>
                            <label>Surname</label>
                            <hint/>
                        </surname></resource></resources></xf:instance><xf:instance id="readonly"><readonly/></xf:instance><xf:var name="fr-params" value="xxf:instance(''fr-parameters-instance'')"/><xf:var name="fr-mode" value="$fr-params/mode"/><xf:bind ref="instance(''fr-form-instance'')" readonly="                             fr:is-readonly-mode()         or                             instance(''readonly'') = ''true'' or                             fr:is-design-time()"/><xf:action event="xforms-model-construct-done" class="fr-design-time-preserve"><xf:var name="is-empty" value="empty(instance()/*)"/><xf:action if="$is-empty"><xf:insert context="instance()" origin="instance(''fr-form-template'')/*"/><xf:rebuild/><xf:recalculate xxf:defaults="true"/></xf:action><xf:action if="not($is-empty)"><xf:var xmlns:migration="java:org.orbeon.oxf.fr.SimpleDataMigration" name="simply-migrated" value="                                     migration:dataMaybeWithSimpleMigration(                                         event(''xxf:absolute-targetid''),                                         instance(''fr-form-template''),                                         instance()                                     )"/><xf:action if="exists($simply-migrated)"><xf:delete ref="instance()/*"/><xf:insert context="instance()" origin="$simply-migrated/*"/><xf:rebuild/><xf:recalculate xxf:defaults="true"/></xf:action></xf:action></xf:action><xf:action event="xforms-model-construct-done"><xf:insert xmlns:migration="java:org.orbeon.oxf.fr.SimpleDataMigration" iterate="migration:iterateBinds(event(''xxf:absolute-targetid''), instance())" context="." origin="xf:attribute(''fr:relevant'', ''false'')"/></xf:action><xf:insert observer="fr-section-template-view" event="xforms-disabled" xxf:phantom="true" if="event(''xxf:binding'')/root()/* is instance(''fr-form-instance'')" context="event(''xxf:binding'')" origin="xf:attribute(''fr:relevant'', ''false'')"/><xf:delete observer="fr-section-template-view" event="xforms-enabled" xxf:phantom="true" if="event(''xxf:binding'')/root() is instance(''fr-form-instance'')/root()" ref="event(''xxf:binding'')/@fr:relevant"/></xf:model></xbl:implementation><xbl:template><xf:group appearance="xxf:internal" model="section-1-model" id="fr-section-template-view"><xf:var name="context" id="context" value="xxf:binding-context(''gs-section-1-component'')"/><xf:var name="readonly" as="xs:boolean" value="exf:readonly($context)"><xf:setvalue event="xforms-enabled xforms-value-changed" ref="instance(''readonly'')" value="exf:readonly($context)" class="fr-design-time-preserve"/></xf:var><xf:var name="fr-resources" as="element()?"><xxf:value value="$fr-resources" xxbl:scope="outer"/></xf:var><xf:var name="form-resources" value="instance(''fr-form-resources'')/(resource[@xml:lang = xxf:instance(''fr-language-instance'')], resource[1])[1]" as="element(resource)"/><xf:label xmlns:oxf="http://www.orbeon.com/oxf/processors" ref="$form-resources/section-1/label"/><fr:grid xmlns:oxf="http://www.orbeon.com/oxf/processors" id="grid-1-grid" bind="grid-1-bind">
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
                    </fr:grid></xf:group></xbl:template></xbl:binding><xbl:binding id="gs-section-2-component" element="component|section-2" class="fr-section-component"><xbl:implementation><xf:model id="section-2-model"><xf:instance id="fr-form-instance" xxbl:mirror="true" xxf:index="id"><empty/></xf:instance><xf:instance id="fr-form-template"><section-2>
                        <section-2-iteration>
                            <grid-2>
                                <number/>
                            </grid-2>
                        </section-2-iteration>
                    </section-2></xf:instance><xf:bind id="fr-form-binds" ref="instance(''fr-form-instance'')"><xf:bind id="section-2-iteration-bind" ref="section-2-iteration" name="section-2-iteration">
                        <xf:bind id="grid-2-bind" ref="grid-2" name="grid-2">
                            <xf:bind id="number-bind" ref="number" name="number" type="xf:decimal"/>
                        </xf:bind>
                    </xf:bind></xf:bind><xf:instance id="fr-form-resources" xxf:readonly="true"><resources><resource xml:lang="en"><section-2>
                            <label>Number</label>
                        </section-2><number>
                            <label>Number</label>
                            <hint/>
                        </number></resource></resources></xf:instance><xf:instance id="readonly"><readonly/></xf:instance><xf:var name="fr-params" value="xxf:instance(''fr-parameters-instance'')"/><xf:var name="fr-mode" value="$fr-params/mode"/><xf:bind ref="instance(''fr-form-instance'')" readonly="                             fr:is-readonly-mode()         or                             instance(''readonly'') = ''true'' or                             fr:is-design-time()"/><xf:action event="xforms-model-construct-done" class="fr-design-time-preserve"><xf:var name="is-empty" value="empty(instance()/*)"/><xf:action if="$is-empty"><xf:insert context="instance()" origin="instance(''fr-form-template'')/*"/><xf:rebuild/><xf:recalculate xxf:defaults="true"/></xf:action><xf:action if="not($is-empty)"><xf:var xmlns:migration="java:org.orbeon.oxf.fr.SimpleDataMigration" name="simply-migrated" value="                                     migration:dataMaybeWithSimpleMigration(                                         event(''xxf:absolute-targetid''),                                         instance(''fr-form-template''),                                         instance()                                     )"/><xf:action if="exists($simply-migrated)"><xf:delete ref="instance()/*"/><xf:insert context="instance()" origin="$simply-migrated/*"/><xf:rebuild/><xf:recalculate xxf:defaults="true"/></xf:action></xf:action></xf:action><xf:action event="xforms-model-construct-done"><xf:insert xmlns:migration="java:org.orbeon.oxf.fr.SimpleDataMigration" iterate="migration:iterateBinds(event(''xxf:absolute-targetid''), instance())" context="." origin="xf:attribute(''fr:relevant'', ''false'')"/></xf:action><xf:insert observer="fr-section-template-view" event="xforms-disabled" xxf:phantom="true" if="event(''xxf:binding'')/root()/* is instance(''fr-form-instance'')" context="event(''xxf:binding'')" origin="xf:attribute(''fr:relevant'', ''false'')"/><xf:delete observer="fr-section-template-view" event="xforms-enabled" xxf:phantom="true" if="event(''xxf:binding'')/root() is instance(''fr-form-instance'')/root()" ref="event(''xxf:binding'')/@fr:relevant"/></xf:model></xbl:implementation><xbl:template><xf:group appearance="xxf:internal" model="section-2-model" id="fr-section-template-view"><xf:var name="context" id="context" value="xxf:binding-context(''gs-section-2-component'')"/><xf:var name="readonly" as="xs:boolean" value="exf:readonly($context)"><xf:setvalue event="xforms-enabled xforms-value-changed" ref="instance(''readonly'')" value="exf:readonly($context)" class="fr-design-time-preserve"/></xf:var><xf:var name="fr-resources" as="element()?"><xxf:value value="$fr-resources" xxbl:scope="outer"/></xf:var><xf:var name="form-resources" value="instance(''fr-form-resources'')/(resource[@xml:lang = xxf:instance(''fr-language-instance'')], resource[1])[1]" as="element(resource)"/><xf:label xmlns:oxf="http://www.orbeon.com/oxf/processors" ref="$form-resources/section-2/label"/><fr:grid xmlns:oxf="http://www.orbeon.com/oxf/processors" id="grid-2-grid" bind="grid-2-bind">
                        <fr:c x="1" y="1" w="12">
                            <fr:number xmlns="http://orbeon.org/oxf/xml/form-builder" xmlns:NumberSupport="java:org.orbeon.xbl.NumberSupportJava" id="number-control" bind="number-bind" class="fr-summary fr-search">
                                <xf:label ref="$form-resources/number/label"/>
                                <xf:hint ref="$form-resources/number/hint"/>
                                <xf:alert ref="$fr-resources/detail/labels/alert"/>
                        
                        
                            </fr:number>
                        </fr:c>
                    </fr:grid></xf:group></xbl:template></xbl:binding><xbl:binding id="gs-section-3-component" element="component|section-3" class="fr-section-component"><xbl:implementation><xf:model id="section-3-model"><xf:instance id="fr-form-instance" xxbl:mirror="true" xxf:index="id"><empty/></xf:instance><xf:instance id="fr-form-template"><section-3>
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
                    </section-3></xf:instance><xf:instance xxf:readonly="true" xxf:exclude-result-prefixes="#all" id="grid-4-template"><grid-4-iteration><city/></grid-4-iteration></xf:instance><xf:bind id="fr-form-binds" ref="instance(''fr-form-instance'')"><xf:bind id="grid-5-bind" ref="grid-5" name="grid-5">
                        <xf:bind id="country-bind" ref="country" name="country" xxf:whitespace="trim"/>
                    </xf:bind><xf:bind id="section-4-bind" ref="section-4" name="section-4">
                        <xf:bind id="grid-4-bind" ref="grid-4" name="grid-4">
                            <xf:bind id="grid-4-iteration-bind" ref="grid-4-iteration" name="grid-4-iteration">
                                <xf:bind id="city-bind" ref="city" name="city" xxf:whitespace="trim"/>
                            </xf:bind>
                        </xf:bind>
                    </xf:bind></xf:bind><xf:instance id="fr-form-resources" xxf:readonly="true"><resources><resource xml:lang="en"><section-3>
                            <label>Country</label>
                            <help/>
                        </section-3><country>
                            <label>Country</label>
                            <hint/>
                        </country><section-4>
                            <label>Cities</label>
                            <help/>
                        </section-4><city>
                            <label>City</label>
                            <hint/>
                        </city></resource></resources></xf:instance><xf:instance id="readonly"><readonly/></xf:instance><xf:var name="fr-params" value="xxf:instance(''fr-parameters-instance'')"/><xf:var name="fr-mode" value="$fr-params/mode"/><xf:bind ref="instance(''fr-form-instance'')" readonly="                             fr:is-readonly-mode()         or                             instance(''readonly'') = ''true'' or                             fr:is-design-time()"/><xf:action event="xforms-model-construct-done" class="fr-design-time-preserve"><xf:var name="is-empty" value="empty(instance()/*)"/><xf:action if="$is-empty"><xf:insert context="instance()" origin="instance(''fr-form-template'')/*"/><xf:rebuild/><xf:recalculate xxf:defaults="true"/></xf:action><xf:action if="not($is-empty)"><xf:var xmlns:migration="java:org.orbeon.oxf.fr.SimpleDataMigration" name="simply-migrated" value="                                     migration:dataMaybeWithSimpleMigration(                                         event(''xxf:absolute-targetid''),                                         instance(''fr-form-template''),                                         instance()                                     )"/><xf:action if="exists($simply-migrated)"><xf:delete ref="instance()/*"/><xf:insert context="instance()" origin="$simply-migrated/*"/><xf:rebuild/><xf:recalculate xxf:defaults="true"/></xf:action></xf:action></xf:action><xf:action event="xforms-model-construct-done"><xf:insert xmlns:migration="java:org.orbeon.oxf.fr.SimpleDataMigration" iterate="migration:iterateBinds(event(''xxf:absolute-targetid''), instance())" context="." origin="xf:attribute(''fr:relevant'', ''false'')"/></xf:action><xf:insert observer="fr-section-template-view" event="xforms-disabled" xxf:phantom="true" if="event(''xxf:binding'')/root()/* is instance(''fr-form-instance'')" context="event(''xxf:binding'')" origin="xf:attribute(''fr:relevant'', ''false'')"/><xf:delete observer="fr-section-template-view" event="xforms-enabled" xxf:phantom="true" if="event(''xxf:binding'')/root() is instance(''fr-form-instance'')/root()" ref="event(''xxf:binding'')/@fr:relevant"/></xf:model></xbl:implementation><xbl:template><xf:group appearance="xxf:internal" model="section-3-model" id="fr-section-template-view"><xf:var name="context" id="context" value="xxf:binding-context(''gs-section-3-component'')"/><xf:var name="readonly" as="xs:boolean" value="exf:readonly($context)"><xf:setvalue event="xforms-enabled xforms-value-changed" ref="instance(''readonly'')" value="exf:readonly($context)" class="fr-design-time-preserve"/></xf:var><xf:var name="fr-resources" as="element()?"><xxf:value value="$fr-resources" xxbl:scope="outer"/></xf:var><xf:var name="form-resources" value="instance(''fr-form-resources'')/(resource[@xml:lang = xxf:instance(''fr-language-instance'')], resource[1])[1]" as="element(resource)"/><xf:label xmlns:oxf="http://www.orbeon.com/oxf/processors" ref="$form-resources/section-3/label"/><fr:grid xmlns:oxf="http://www.orbeon.com/oxf/processors" id="grid-5-grid" bind="grid-5-bind">
                        <fr:c x="1" y="1" w="12">
                            <xf:input id="country-control" bind="country-bind" class="fr-summary fr-search">
                                <xf:label ref="$form-resources/country/label"/>
                                <xf:hint ref="$form-resources/country/hint"/>
                                <xf:alert ref="$fr-resources/detail/labels/alert"/>
                        
                        
                            </xf:input>
                        </fr:c>
                    </fr:grid><fr:section xmlns:oxf="http://www.orbeon.com/oxf/processors" id="section-4-section" bind="section-4-bind">
                        <xf:label ref="$form-resources/section-4/label"/>
                        <fr:grid id="grid-4-grid" bind="grid-4-bind" repeat="content" min="1" template="instance(''grid-4-template'')" apply-defaults="true" fb:initial-iterations="first">
                            <fr:c x="1" y="1" w="12">
                                <xf:input id="city-control" bind="city-bind">
                                    <xf:label ref="$form-resources/city/label"/>
                                    <xf:hint ref="$form-resources/city/hint"/>
                                    <xf:alert ref="$fr-resources/detail/labels/alert"/>
                        
                        
                                </xf:input>
                            </fr:c>
                        </fr:grid>
                    </fr:section></xf:group></xbl:template></xbl:binding></xbl:xbl>
    </xh:head>
    <xh:body>
        <fr:view>
            <fr:body xmlns:p="http://www.orbeon.com/oxf/pipeline" xmlns:xbl="http://www.w3.org/ns/xbl" xmlns:oxf="http://www.orbeon.com/oxf/processors">
                <fr:section id="section-2-section" bind="section-2-bind">
          <xf:label ref="$form-resources/section-2/label"/><component:section-1 xmlns:component="http://orbeon.org/oxf/xml/form-builder/component/gs/library" xmlns="http://orbeon.org/oxf/xml/form-builder" xmlns:fbf="java:org.orbeon.oxf.fb.FormBuilderXPathApi" xmlns:xxbl="http://orbeon.org/oxf/xml/xbl" xmlns:frf="java:org.orbeon.oxf.fr.FormRunner"/></fr:section>
            </fr:body>
        </fr:view>
    </xh:body>
</xh:html>'