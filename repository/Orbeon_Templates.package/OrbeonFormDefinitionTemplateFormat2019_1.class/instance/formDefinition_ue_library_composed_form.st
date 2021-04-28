library forms
formDefinition_ue_library_composed_form

	^'<?xml version="1.0" encoding="UTF-8"?><xh:html xmlns:xh="http://www.w3.org/1999/xhtml" xmlns:ev="http://www.w3.org/2001/xml-events" xmlns:exf="http://www.exforms.org/exf/1-0" xmlns:fb="http://orbeon.org/oxf/xml/form-builder" xmlns:fr="http://orbeon.org/oxf/xml/form-runner" xmlns:saxon="http://saxon.sf.net/" xmlns:soap="http://schemas.xmlsoap.org/soap/envelope/" xmlns:sql="http://orbeon.org/oxf/xml/sql" xmlns:xf="http://www.w3.org/2002/xforms" xmlns:xi="http://www.w3.org/2001/XInclude" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xxf="http://orbeon.org/oxf/xml/xforms" xmlns:xxi="http://orbeon.org/oxf/xml/xinclude" fr:data-format-version="2019.1.0">
    <xh:head>
        <xh:meta content="text/html; charset=UTF-8" http-equiv="Content-Type"/>
        <xh:title>Library Composed Form</xh:title>
        <xf:model xxf:expose-xpath-types="true" id="fr-form-model">
            <xf:instance xxf:exclude-result-prefixes="#all" id="fr-form-instance" xxf:index="id">
                <form>
                    <internal-section><grid-1>
                            <s/>
                            <k/>
                            <uuid/>
                            <oop/>
                            <assignmentOop/>
                        </grid-1>
                    </internal-section>
                    <login-section><grid-2>
                            <username/>
                            <rol/>
                            <processId/>
                        </grid-2>
                    </login-section>
                    <section-name><grid-1>
                            <name/>
                            <surname/>
                        </grid-1>
                    </section-name>
                    <section-address><grid-2>
                            <street/>
                            <number/>
                            <subNumber/>
                        </grid-2>
                    </section-address>
                </form>
            </xf:instance>
            <xf:bind id="fr-form-binds" ref="instance(''fr-form-instance'')">
                <xf:bind id="internal-section-bind" name="internal-section" ref="internal-section"/>
                <xf:bind id="login-section-bind" name="login-section" ref="login-section"/>
                <xf:bind id="section-name-bind" name="section-name" ref="section-name"/>
                <xf:bind id="section-address-bind" name="section-address" ref="section-address"/>
            </xf:bind>
            <xf:instance xxf:readonly="true" xxf:exclude-result-prefixes="#all" id="fr-form-metadata">
                <metadata>
                    <application-name>ue</application-name>
                    <form-name>library-composed-form</form-name>
                    <title xml:lang="en">Library Composed Form</title>
                    <description xml:lang="en">Library Composed Form</description>
                    <description xml:lang="es"/>
                    <library-versions>
                        <orbeon>1</orbeon>
                        <app>1</app>
                    </library-versions>
                <updated-with-version>2020.1.1.202102012142 PE</updated-with-version><migration version="2019.1.0">{"migrations":[{"containerPath":[{"value":"internal-section"}],"newGridElem":{"value":"grid-1"},"afterElem":null,"content":[{"value":"s"},{"value":"k"},{"value":"uuid"},{"value":"oop"},{"value":"assignmentOop"}],"topLevel":false},{"containerPath":[{"value":"login-section"}],"newGridElem":{"value":"grid-2"},"afterElem":null,"content":[{"value":"username"},{"value":"rol"},{"value":"processId"}],"topLevel":false},{"containerPath":[{"value":"section-name"}],"newGridElem":{"value":"grid-1"},"afterElem":null,"content":[{"value":"name"},{"value":"surname"}],"topLevel":false},{"containerPath":[{"value":"section-address"}],"newGridElem":{"value":"grid-2"},"afterElem":null,"content":[{"value":"street"},{"value":"number"},{"value":"subNumber"}],"topLevel":false}]}</migration></metadata>
            </xf:instance>
            <xf:instance xxf:exclude-result-prefixes="#all" id="fr-form-attachments">
                <attachments>
                    <css filename="" mediatype="text/css" size=""/>
                    <pdf filename="" mediatype="application/pdf" size=""/>
                </attachments>
            </xf:instance>
            <xf:instance xxf:exclude-result-prefixes="#all" id="fr-form-resources" xxf:readonly="false">
                <resources>
                    <resource xml:lang="en">
                        <section-name>
                            <label>Name</label>
                            <help/>
                        </section-name>
                        <internal-section>
                            <label>Internal</label>
                            <help/>
                        </internal-section>
                        <login-section>
                            <label>User</label>
                            <help/>
                        </login-section>
                        <section-address>
                            <label>Adress</label>
                            <help/>
                        </section-address>
                    </resource>
                    <resource xml:lang="es">
                        <section-name>
                            <label/>
                            <help/>
                        </section-name>
                        <internal-section>
                            <label/>
                            <help/>
                        </internal-section>
                        <login-section>
                            <label/>
                            <help/>
                        </login-section>
                        <section-address>
                            <label/>
                            <help/>
                        </section-address>
                    </resource>
                </resources>
            </xf:instance>
        </xf:model><xbl:xbl xmlns:xbl="http://www.w3.org/ns/xbl" xmlns:fbf="java:org.orbeon.oxf.fb.FormBuilderXPathApi" xmlns:xxbl="http://orbeon.org/oxf/xml/xbl" xmlns:frf="java:org.orbeon.oxf.fr.FormRunner" xmlns:component="http://orbeon.org/oxf/xml/form-builder/component/orbeon/library" xmlns:p="http://www.orbeon.com/oxf/pipeline"><xbl:binding id="orbeon-internal-section-component" element="component|internal-section" class="fr-section-component"><xbl:implementation><xf:model id="internal-section-model"><xf:instance id="fr-form-instance" xxbl:mirror="true" xxf:index="id"><empty/></xf:instance><xf:instance id="fr-form-template"><internal-section>
                        <grid-1>
                            <s/>
                            <k/>
                            <uuid/>
                            <oop/>
                            <assignmentOop/>
                        </grid-1>
                    </internal-section></xf:instance><xf:bind id="fr-form-binds" ref="instance(''fr-form-instance'')"><xf:bind id="grid-1-bind" ref="grid-1" name="grid-1">
                        <xf:bind id="s-bind" name="s" ref="s" required="true()"/>
                        <xf:bind id="k-bind" ref="k" name="k" required="true()"/>
                        <xf:bind id="uuid-bind" ref="uuid" name="uuid" required="true()"/>
                        <xf:bind id="oop-bind" ref="oop" name="oop" required="true()"/>
                        <xf:bind id="assignmentOop-bind" ref="assignmentOop" name="assignmentOop" required="true()"/>
                    </xf:bind></xf:bind><xf:instance id="fr-form-resources" xxf:readonly="true"><resources><resource xml:lang="en"><internal-section>
                            <label>Internal Section</label>
                        </internal-section><s>
                            <label>S</label>
                            <hint/>
                        </s><k>
                            <label>K</label>
                            <hint/>
                        </k><uuid>
                            <label>UUID</label>
                            <hint/>
                        </uuid><oop>
                            <label>OOP</label>
                            <hint/>
                        </oop><assignmentOop>
                            <label>OOP2</label>
                            <hint/>
                        </assignmentOop></resource><resource xml:lang="es"><internal-section>
                            <label>Internal Section</label>
                        </internal-section><s>
                            <label>S</label>
                            <hint/>
                        </s><k>
                            <label>K</label>
                            <hint/>
                        </k><uuid>
                            <label>UUID</label>
                            <hint/>
                        </uuid><oop>
                            <label>OOP</label>
                            <hint/>
                        </oop><assignmentOop>
                            <label/>
                            <hint/>
                        </assignmentOop></resource></resources></xf:instance><xf:instance id="readonly"><readonly/></xf:instance><xf:var name="fr-params" value="xxf:instance(''fr-parameters-instance'')"/><xf:var name="fr-mode" value="$fr-params/mode"/><xf:bind ref="instance(''fr-form-instance'')" readonly="                             fr:is-readonly-mode()         or                             instance(''readonly'') = ''true'' or                             fr:is-design-time()"/><xf:action event="xforms-model-construct-done" class="fr-design-time-preserve"><xf:var name="is-empty" value="empty(instance()/*)"/><xf:action if="$is-empty"><xf:insert context="instance()" origin="instance(''fr-form-template'')/*"/><xf:rebuild/><xf:recalculate xxf:defaults="true"/></xf:action><xf:action if="not($is-empty)"><xf:var xmlns:migration="java:org.orbeon.oxf.fr.SimpleDataMigration" name="simply-migrated" value="                                     migration:dataMaybeWithSimpleMigration(                                         event(''xxf:absolute-targetid''),                                         instance(''fr-form-template''),                                         instance()                                     )"/><xf:action if="exists($simply-migrated)"><xf:delete ref="instance()/*"/><xf:insert context="instance()" origin="$simply-migrated/*"/><xf:rebuild/><xf:recalculate xxf:defaults="true"/></xf:action></xf:action></xf:action><xf:action event="xforms-model-construct-done"><xf:insert xmlns:migration="java:org.orbeon.oxf.fr.SimpleDataMigration" iterate="migration:iterateBinds(event(''xxf:absolute-targetid''), instance())" context="." origin="xf:attribute(''fr:relevant'', ''false'')"/></xf:action><xf:insert observer="fr-section-template-view" event="xforms-disabled" xxf:phantom="true" if="event(''xxf:binding'')/root()/* is instance(''fr-form-instance'')" context="event(''xxf:binding'')" origin="xf:attribute(''fr:relevant'', ''false'')"/><xf:delete observer="fr-section-template-view" event="xforms-enabled" xxf:phantom="true" if="event(''xxf:binding'')/root() is instance(''fr-form-instance'')/root()" ref="event(''xxf:binding'')/@fr:relevant"/></xf:model></xbl:implementation><xbl:template><xf:group appearance="xxf:internal" model="internal-section-model" id="fr-section-template-view"><xf:var name="context" id="context" value="xxf:binding-context(''orbeon-internal-section-component'')"/><xf:var name="readonly" as="xs:boolean" value="exf:readonly($context)"><xf:setvalue event="xforms-enabled xforms-value-changed" ref="instance(''readonly'')" value="exf:readonly($context)" class="fr-design-time-preserve"/></xf:var><xf:var name="fr-resources" as="element()?"><xxf:value value="$fr-resources" xxbl:scope="outer"/></xf:var><xf:var name="form-resources" value="instance(''fr-form-resources'')/(resource[@xml:lang = xxf:instance(''fr-language-instance'')], resource[1])[1]" as="element(resource)"/><xf:label xmlns:oxf="http://www.orbeon.com/oxf/processors" ref="$form-resources/internal-section/label"/><fr:grid xmlns:oxf="http://www.orbeon.com/oxf/processors" id="grid-1-grid" bind="grid-1-bind">
                        <fr:c y="1" x="1" w="4">
                                <xf:input id="s-control" bind="s-bind">
                                    <xf:label ref="$form-resources/s/label"/>
                                    <xf:hint ref="$form-resources/s/hint"/>
                                    <xf:alert ref="$fr-resources/detail/labels/alert"/>                                    
                                </xf:input>
                            </fr:c>
                        <fr:c y="1" x="5" w="4">
                                <xf:input id="k-control" bind="k-bind">
                                    <xf:label ref="$form-resources/k/label"/>
                                    <xf:hint ref="$form-resources/k/hint"/>
                                    <xf:alert ref="$fr-resources/detail/labels/alert"/>                                    
                                </xf:input>
                            </fr:c>
                        <fr:c y="1" x="9" w="4">
                                <xf:input id="uuid-control" bind="uuid-bind">
                                    <xf:label ref="$form-resources/uuid/label"/>
                                    <xf:hint ref="$form-resources/uuid/hint"/>
                                    <xf:alert ref="$fr-resources/detail/labels/alert"/>                                    
                                </xf:input>
                            </fr:c>
                        <fr:c y="2" x="1" w="4">
                                <xf:input id="oop-control" bind="oop-bind">
                                    <xf:label ref="$form-resources/oop/label"/>
                                    <xf:hint ref="$form-resources/oop/hint"/>
                                    <xf:alert ref="$fr-resources/detail/labels/alert"/>
                                </xf:input>
                            </fr:c>
                        <fr:c y="2" x="5" w="4">
                                <xf:input id="assignmentOop-control" bind="assignmentOop-bind">
                                    <xf:label ref="$form-resources/assignmentOop/label"/>
                                    <xf:hint ref="$form-resources/assignmentOop/hint"/>
                                    <xf:alert ref="$fr-resources/detail/labels/alert"/>                                    
                                </xf:input>
                            </fr:c>
                        <fr:c y="2" x="9" w="4"/>
                    </fr:grid></xf:group></xbl:template></xbl:binding><xbl:binding id="orbeon-login-section-component" element="component|login-section" class="fr-section-component"><xbl:implementation><xf:model id="login-section-model"><xf:instance id="fr-form-instance" xxbl:mirror="true" xxf:index="id"><empty/></xf:instance><xf:instance id="fr-form-template"><login-section>
                        <grid-2>
                            <username/>
                            <rol/>
                            <processId/>
                        </grid-2>
                    </login-section></xf:instance><xf:bind id="fr-form-binds" ref="instance(''fr-form-instance'')"><xf:bind id="grid-2-bind" ref="grid-2" name="grid-2">
                        <xf:bind id="username-bind" ref="username" name="username" required="true()"/>
                        <xf:bind id="rol-bind" ref="rol" name="rol" required="true()"/>
                        <xf:bind id="processId-bind" ref="processId" name="processId" required="true()"/>
                    </xf:bind></xf:bind><xf:instance id="fr-form-resources" xxf:readonly="true"><resources><resource xml:lang="en"><login-section>
                            <label>User</label>
                            <help/>
                        </login-section><username>
                            <label>User</label>
                            <hint/>
                        </username><rol>
                            <label>Rol</label>
                            <hint/>
                        </rol><processId>
                            <label>Process Id</label>
                            <hint/>
                        </processId></resource><resource xml:lang="es"><login-section>
                            <label>Usuario</label>
                            <help/>
                        </login-section><username>
                            <label>User</label>
                            <hint/>
                        </username><rol>
                            <label>Rol</label>
                            <hint/>
                        </rol><processId>
                            <label>Form Id</label>
                            <hint/>
                        </processId></resource></resources></xf:instance><xf:instance id="readonly"><readonly/></xf:instance><xf:var name="fr-params" value="xxf:instance(''fr-parameters-instance'')"/><xf:var name="fr-mode" value="$fr-params/mode"/><xf:bind ref="instance(''fr-form-instance'')" readonly="                             fr:is-readonly-mode()         or                             instance(''readonly'') = ''true'' or                             fr:is-design-time()"/><xf:action event="xforms-model-construct-done" class="fr-design-time-preserve"><xf:var name="is-empty" value="empty(instance()/*)"/><xf:action if="$is-empty"><xf:insert context="instance()" origin="instance(''fr-form-template'')/*"/><xf:rebuild/><xf:recalculate xxf:defaults="true"/></xf:action><xf:action if="not($is-empty)"><xf:var xmlns:migration="java:org.orbeon.oxf.fr.SimpleDataMigration" name="simply-migrated" value="                                     migration:dataMaybeWithSimpleMigration(                                         event(''xxf:absolute-targetid''),                                         instance(''fr-form-template''),                                         instance()                                     )"/><xf:action if="exists($simply-migrated)"><xf:delete ref="instance()/*"/><xf:insert context="instance()" origin="$simply-migrated/*"/><xf:rebuild/><xf:recalculate xxf:defaults="true"/></xf:action></xf:action></xf:action><xf:action event="xforms-model-construct-done"><xf:insert xmlns:migration="java:org.orbeon.oxf.fr.SimpleDataMigration" iterate="migration:iterateBinds(event(''xxf:absolute-targetid''), instance())" context="." origin="xf:attribute(''fr:relevant'', ''false'')"/></xf:action><xf:insert observer="fr-section-template-view" event="xforms-disabled" xxf:phantom="true" if="event(''xxf:binding'')/root()/* is instance(''fr-form-instance'')" context="event(''xxf:binding'')" origin="xf:attribute(''fr:relevant'', ''false'')"/><xf:delete observer="fr-section-template-view" event="xforms-enabled" xxf:phantom="true" if="event(''xxf:binding'')/root() is instance(''fr-form-instance'')/root()" ref="event(''xxf:binding'')/@fr:relevant"/></xf:model></xbl:implementation><xbl:template><xf:group appearance="xxf:internal" model="login-section-model" id="fr-section-template-view"><xf:var name="context" id="context" value="xxf:binding-context(''orbeon-login-section-component'')"/><xf:var name="readonly" as="xs:boolean" value="exf:readonly($context)"><xf:setvalue event="xforms-enabled xforms-value-changed" ref="instance(''readonly'')" value="exf:readonly($context)" class="fr-design-time-preserve"/></xf:var><xf:var name="fr-resources" as="element()?"><xxf:value value="$fr-resources" xxbl:scope="outer"/></xf:var><xf:var name="form-resources" value="instance(''fr-form-resources'')/(resource[@xml:lang = xxf:instance(''fr-language-instance'')], resource[1])[1]" as="element(resource)"/><xf:label xmlns:oxf="http://www.orbeon.com/oxf/processors" ref="$form-resources/login-section/label"/><fr:grid xmlns:oxf="http://www.orbeon.com/oxf/processors" id="grid-2-grid" bind="grid-2-bind">
                        <fr:c y="1" x="1" w="4">
                                <xf:input id="username-control" bind="username-bind">
                                    <xf:label ref="$form-resources/username/label"/>
                                    <xf:hint ref="$form-resources/username/hint"/>
                                    <xf:alert ref="$fr-resources/detail/labels/alert"/>                                    
                                </xf:input>
                            </fr:c>
                        <fr:c y="1" x="5" w="4">
                                <xf:input id="rol-control" bind="rol-bind">
                                    <xf:label ref="$form-resources/rol/label"/>
                                    <xf:hint ref="$form-resources/rol/hint"/>
                                    <xf:alert ref="$fr-resources/detail/labels/alert"/>                                    
                                </xf:input>
                            </fr:c>
                        <fr:c y="1" x="9" w="4">
                                <xf:input id="processId-control" bind="processId-bind">
                                    <xf:label ref="$form-resources/processId/label"/>
                                    <xf:hint ref="$form-resources/processId/hint"/>
                                    <xf:alert ref="$fr-resources/detail/labels/alert"/>                                    
                                </xf:input>
                            </fr:c>
                    </fr:grid></xf:group></xbl:template></xbl:binding></xbl:xbl><xbl:xbl xmlns:xbl="http://www.w3.org/ns/xbl" xmlns:fbf="java:org.orbeon.oxf.fb.FormBuilderXPathApi" xmlns:xxbl="http://orbeon.org/oxf/xml/xbl" xmlns:frf="java:org.orbeon.oxf.fr.FormRunner" xmlns:component="http://orbeon.org/oxf/xml/form-builder/component/ue/library" xmlns:p="http://www.orbeon.com/oxf/pipeline"><xbl:binding id="ue-section-name-component" element="component|section-name" class="fr-section-component"><xbl:implementation><xf:model id="section-name-model"><xf:instance id="fr-form-instance" xxbl:mirror="true" xxf:index="id"><empty/></xf:instance><xf:instance id="fr-form-template"><section-name>
                        <grid-1>
                            <name/>
                            <surname/>
                        </grid-1>
                    </section-name></xf:instance><xf:bind id="fr-form-binds" ref="instance(''fr-form-instance'')"><xf:bind id="grid-1-bind" ref="grid-1" name="grid-1">
                        <xf:bind id="name-bind" name="name" ref="name" xxf:whitespace="trim" required="true()"/>
                        <xf:bind id="surname-bind" ref="surname" name="surname" xxf:whitespace="trim" required="true()"/>
                    </xf:bind></xf:bind><xf:instance id="fr-form-resources" xxf:readonly="true"><resources><resource xml:lang="en"><section-name>
                            <label>Library Name</label>
                        </section-name><name>
                            <label>Name</label>
                            <hint/>                            
                        </name><surname>
                            <label>Surname</label>
                            <hint/>
                        </surname></resource></resources></xf:instance><xf:instance id="readonly"><readonly/></xf:instance><xf:var name="fr-params" value="xxf:instance(''fr-parameters-instance'')"/><xf:var name="fr-mode" value="$fr-params/mode"/><xf:bind ref="instance(''fr-form-instance'')" readonly="                             fr:is-readonly-mode()         or                             instance(''readonly'') = ''true'' or                             fr:is-design-time()"/><xf:action event="xforms-model-construct-done" class="fr-design-time-preserve"><xf:var name="is-empty" value="empty(instance()/*)"/><xf:action if="$is-empty"><xf:insert context="instance()" origin="instance(''fr-form-template'')/*"/><xf:rebuild/><xf:recalculate xxf:defaults="true"/></xf:action><xf:action if="not($is-empty)"><xf:var xmlns:migration="java:org.orbeon.oxf.fr.SimpleDataMigration" name="simply-migrated" value="                                     migration:dataMaybeWithSimpleMigration(                                         event(''xxf:absolute-targetid''),                                         instance(''fr-form-template''),                                         instance()                                     )"/><xf:action if="exists($simply-migrated)"><xf:delete ref="instance()/*"/><xf:insert context="instance()" origin="$simply-migrated/*"/><xf:rebuild/><xf:recalculate xxf:defaults="true"/></xf:action></xf:action></xf:action><xf:action event="xforms-model-construct-done"><xf:insert xmlns:migration="java:org.orbeon.oxf.fr.SimpleDataMigration" iterate="migration:iterateBinds(event(''xxf:absolute-targetid''), instance())" context="." origin="xf:attribute(''fr:relevant'', ''false'')"/></xf:action><xf:insert observer="fr-section-template-view" event="xforms-disabled" xxf:phantom="true" if="event(''xxf:binding'')/root()/* is instance(''fr-form-instance'')" context="event(''xxf:binding'')" origin="xf:attribute(''fr:relevant'', ''false'')"/><xf:delete observer="fr-section-template-view" event="xforms-enabled" xxf:phantom="true" if="event(''xxf:binding'')/root() is instance(''fr-form-instance'')/root()" ref="event(''xxf:binding'')/@fr:relevant"/></xf:model></xbl:implementation><xbl:template><xf:group appearance="xxf:internal" model="section-name-model" id="fr-section-template-view"><xf:var name="context" id="context" value="xxf:binding-context(''ue-section-name-component'')"/><xf:var name="readonly" as="xs:boolean" value="exf:readonly($context)"><xf:setvalue event="xforms-enabled xforms-value-changed" ref="instance(''readonly'')" value="exf:readonly($context)" class="fr-design-time-preserve"/></xf:var><xf:var name="fr-resources" as="element()?"><xxf:value value="$fr-resources" xxbl:scope="outer"/></xf:var><xf:var name="form-resources" value="instance(''fr-form-resources'')/(resource[@xml:lang = xxf:instance(''fr-language-instance'')], resource[1])[1]" as="element(resource)"/><xf:label xmlns:oxf="http://www.orbeon.com/oxf/processors" ref="$form-resources/section-name/label"/><fr:grid xmlns:oxf="http://www.orbeon.com/oxf/processors" id="grid-1-grid" bind="grid-1-bind">
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
                    </fr:grid></xf:group></xbl:template></xbl:binding><xbl:binding id="ue-section-address-component" element="component|section-address" class="fr-section-component"><xbl:implementation><xf:model id="section-address-model"><xf:instance id="fr-form-instance" xxbl:mirror="true" xxf:index="id"><empty/></xf:instance><xf:instance id="fr-form-template"><section-address>
                        <grid-2>
                            <street/>
                            <number/>
                            <subNumber/>
                        </grid-2>
                    </section-address></xf:instance><xf:bind id="fr-form-binds" ref="instance(''fr-form-instance'')"><xf:bind id="grid-2-bind" ref="grid-2" name="grid-2">
                        <xf:bind id="street-bind" ref="street" name="street" xxf:whitespace="trim"/>
                        <xf:bind id="number-bind" ref="number" name="number" xxf:whitespace="trim"/>
                        <xf:bind id="subNumber-bind" ref="subNumber" name="subNumber" xxf:whitespace="trim"/>
                    </xf:bind></xf:bind><xf:instance id="fr-form-resources" xxf:readonly="true"><resources><resource xml:lang="en"><section-address>
                            <label>Library Address</label>
                            <help/>
                        </section-address><street>
                            <label>Street</label>
                            <hint/>
                        </street><number>
                            <label>Number</label>
                            <hint/>
                        </number><subNumber>
                            <label>Sub Number</label>
                            <hint/>
                        </subNumber></resource></resources></xf:instance><xf:instance id="readonly"><readonly/></xf:instance><xf:var name="fr-params" value="xxf:instance(''fr-parameters-instance'')"/><xf:var name="fr-mode" value="$fr-params/mode"/><xf:bind ref="instance(''fr-form-instance'')" readonly="                             fr:is-readonly-mode()         or                             instance(''readonly'') = ''true'' or                             fr:is-design-time()"/><xf:action event="xforms-model-construct-done" class="fr-design-time-preserve"><xf:var name="is-empty" value="empty(instance()/*)"/><xf:action if="$is-empty"><xf:insert context="instance()" origin="instance(''fr-form-template'')/*"/><xf:rebuild/><xf:recalculate xxf:defaults="true"/></xf:action><xf:action if="not($is-empty)"><xf:var xmlns:migration="java:org.orbeon.oxf.fr.SimpleDataMigration" name="simply-migrated" value="                                     migration:dataMaybeWithSimpleMigration(                                         event(''xxf:absolute-targetid''),                                         instance(''fr-form-template''),                                         instance()                                     )"/><xf:action if="exists($simply-migrated)"><xf:delete ref="instance()/*"/><xf:insert context="instance()" origin="$simply-migrated/*"/><xf:rebuild/><xf:recalculate xxf:defaults="true"/></xf:action></xf:action></xf:action><xf:action event="xforms-model-construct-done"><xf:insert xmlns:migration="java:org.orbeon.oxf.fr.SimpleDataMigration" iterate="migration:iterateBinds(event(''xxf:absolute-targetid''), instance())" context="." origin="xf:attribute(''fr:relevant'', ''false'')"/></xf:action><xf:insert observer="fr-section-template-view" event="xforms-disabled" xxf:phantom="true" if="event(''xxf:binding'')/root()/* is instance(''fr-form-instance'')" context="event(''xxf:binding'')" origin="xf:attribute(''fr:relevant'', ''false'')"/><xf:delete observer="fr-section-template-view" event="xforms-enabled" xxf:phantom="true" if="event(''xxf:binding'')/root() is instance(''fr-form-instance'')/root()" ref="event(''xxf:binding'')/@fr:relevant"/></xf:model></xbl:implementation><xbl:template><xf:group appearance="xxf:internal" model="section-address-model" id="fr-section-template-view"><xf:var name="context" id="context" value="xxf:binding-context(''ue-section-address-component'')"/><xf:var name="readonly" as="xs:boolean" value="exf:readonly($context)"><xf:setvalue event="xforms-enabled xforms-value-changed" ref="instance(''readonly'')" value="exf:readonly($context)" class="fr-design-time-preserve"/></xf:var><xf:var name="fr-resources" as="element()?"><xxf:value value="$fr-resources" xxbl:scope="outer"/></xf:var><xf:var name="form-resources" value="instance(''fr-form-resources'')/(resource[@xml:lang = xxf:instance(''fr-language-instance'')], resource[1])[1]" as="element(resource)"/><xf:label xmlns:oxf="http://www.orbeon.com/oxf/processors" ref="$form-resources/section-address/label"/><fr:grid xmlns:oxf="http://www.orbeon.com/oxf/processors" id="grid-2-grid" bind="grid-2-bind">
                        <fr:c y="1" x="1" w="4">
                                <xf:input id="street-control" bind="street-bind">
                                    <xf:label ref="$form-resources/street/label"/>
                                    <xf:hint ref="$form-resources/street/hint"/>
                                    <xf:alert ref="$fr-resources/detail/labels/alert"/>
                                </xf:input>
                            </fr:c>
                        <fr:c y="1" x="5" w="4">
                                <xf:input id="number-control" bind="number-bind">
                                    <xf:label ref="$form-resources/number/label"/>
                                    <xf:hint ref="$form-resources/number/hint"/>
                                    <xf:alert ref="$fr-resources/detail/labels/alert"/>
                                </xf:input>
                            </fr:c>
                        <fr:c y="1" x="9" w="4">
                                <xf:input id="subNumber-control" bind="subNumber-bind">
                                    <xf:label ref="$form-resources/subNumber/label"/>
                                    <xf:hint ref="$form-resources/subNumber/hint"/>
                                    <xf:alert ref="$fr-resources/detail/labels/alert"/>                      
                                </xf:input>
                            </fr:c>
                    </fr:grid></xf:group></xbl:template></xbl:binding><xbl:binding id="ue-section-1-component" element="component|section-1" class="fr-section-component"><xbl:implementation><xf:model id="section-1-model"><xf:instance id="fr-form-instance" xxbl:mirror="true" xxf:index="id"><empty/></xf:instance><xf:instance id="fr-form-template"><section-1>
                        <grid-3>
                            <control-1/>
                        </grid-3>
                    </section-1></xf:instance><xf:bind id="fr-form-binds" ref="instance(''fr-form-instance'')"><xf:bind id="grid-3-bind" ref="grid-3" name="grid-3">
                        <xf:bind id="control-1-bind" ref="control-1" name="control-1"/>
                    </xf:bind></xf:bind><xf:instance id="fr-form-resources" xxf:readonly="true"><resources><resource xml:lang="en"><section-1>
                            <label>Case</label>
                            <help/>
                        </section-1><control-1>
                            <label/>
                            <hint/>
                        </control-1></resource></resources></xf:instance><xf:instance id="readonly"><readonly/></xf:instance><xf:var name="fr-params" value="xxf:instance(''fr-parameters-instance'')"/><xf:var name="fr-mode" value="$fr-params/mode"/><xf:bind ref="instance(''fr-form-instance'')" readonly="                             fr:is-readonly-mode()         or                             instance(''readonly'') = ''true'' or                             fr:is-design-time()"/><xf:action event="xforms-model-construct-done" class="fr-design-time-preserve"><xf:var name="is-empty" value="empty(instance()/*)"/><xf:action if="$is-empty"><xf:insert context="instance()" origin="instance(''fr-form-template'')/*"/><xf:rebuild/><xf:recalculate xxf:defaults="true"/></xf:action><xf:action if="not($is-empty)"><xf:var xmlns:migration="java:org.orbeon.oxf.fr.SimpleDataMigration" name="simply-migrated" value="                                     migration:dataMaybeWithSimpleMigration(                                         event(''xxf:absolute-targetid''),                                         instance(''fr-form-template''),                                         instance()                                     )"/><xf:action if="exists($simply-migrated)"><xf:delete ref="instance()/*"/><xf:insert context="instance()" origin="$simply-migrated/*"/><xf:rebuild/><xf:recalculate xxf:defaults="true"/></xf:action></xf:action></xf:action><xf:action event="xforms-model-construct-done"><xf:insert xmlns:migration="java:org.orbeon.oxf.fr.SimpleDataMigration" iterate="migration:iterateBinds(event(''xxf:absolute-targetid''), instance())" context="." origin="xf:attribute(''fr:relevant'', ''false'')"/></xf:action><xf:insert observer="fr-section-template-view" event="xforms-disabled" xxf:phantom="true" if="event(''xxf:binding'')/root()/* is instance(''fr-form-instance'')" context="event(''xxf:binding'')" origin="xf:attribute(''fr:relevant'', ''false'')"/><xf:delete observer="fr-section-template-view" event="xforms-enabled" xxf:phantom="true" if="event(''xxf:binding'')/root() is instance(''fr-form-instance'')/root()" ref="event(''xxf:binding'')/@fr:relevant"/></xf:model></xbl:implementation><xbl:template><xf:group appearance="xxf:internal" model="section-1-model" id="fr-section-template-view"><xf:var name="context" id="context" value="xxf:binding-context(''ue-section-1-component'')"/><xf:var name="readonly" as="xs:boolean" value="exf:readonly($context)"><xf:setvalue event="xforms-enabled xforms-value-changed" ref="instance(''readonly'')" value="exf:readonly($context)" class="fr-design-time-preserve"/></xf:var><xf:var name="fr-resources" as="element()?"><xxf:value value="$fr-resources" xxbl:scope="outer"/></xf:var><xf:var name="form-resources" value="instance(''fr-form-resources'')/(resource[@xml:lang = xxf:instance(''fr-language-instance'')], resource[1])[1]" as="element(resource)"/><xf:label xmlns:oxf="http://www.orbeon.com/oxf/processors" ref="$form-resources/section-1/label"/><fr:grid xmlns:oxf="http://www.orbeon.com/oxf/processors" id="grid-3-grid" bind="grid-3-bind">
                        <fr:c x="1" y="1" w="12">
                            <xf:textarea id="control-1-control" bind="control-1-bind">
                                <xf:label ref="$form-resources/control-1/label"/>
                                <xf:hint ref="$form-resources/control-1/hint"/>
                                <xf:alert ref="$fr-resources/detail/labels/alert"/>
                            </xf:textarea>
                        </fr:c>
                    </fr:grid></xf:group></xbl:template></xbl:binding></xbl:xbl>
    </xh:head>
    <xh:body>
        <fr:view>
            <fr:body xmlns:p="http://www.orbeon.com/oxf/pipeline" xmlns:xbl="http://www.w3.org/ns/xbl" xmlns:oxf="http://www.orbeon.com/oxf/processors">
                <fr:section bind="internal-section-bind" id="internal-section-control">
                    <xf:label ref="$form-resources/internal-section/label"/>
                    <component:internal-section xmlns:component="http://orbeon.org/oxf/xml/form-builder/component/orbeon/library" xmlns="http://orbeon.org/oxf/xml/form-builder" xmlns:fbf="java:org.orbeon.oxf.fb.FormBuilder" xmlns:xxbl="http://orbeon.org/oxf/xml/xbl"/>
                </fr:section>
                <fr:section bind="login-section-bind" id="login-section-control">
                    <xf:label ref="$form-resources/login-section/label"/>
                    <component:login-section xmlns:component="http://orbeon.org/oxf/xml/form-builder/component/orbeon/library" xmlns="http://orbeon.org/oxf/xml/form-builder" xmlns:fbf="java:org.orbeon.oxf.fb.FormBuilder" xmlns:xxbl="http://orbeon.org/oxf/xml/xbl"/>
                </fr:section>
                <fr:section bind="section-name-bind" id="section-name-control">
                    <xf:label ref="$form-resources/section-name/label"/>
                    <component:section-name xmlns:component="http://orbeon.org/oxf/xml/form-builder/component/ue/library" xmlns="http://orbeon.org/oxf/xml/form-builder" xmlns:fbf="java:org.orbeon.oxf.fb.FormBuilder" xmlns:xxbl="http://orbeon.org/oxf/xml/xbl"/>
                </fr:section>
                <fr:section bind="section-address-bind" id="section-address-control">
                    <xf:label ref="$form-resources/section-address/label"/>
                    <component:section-address xmlns:component="http://orbeon.org/oxf/xml/form-builder/component/ue/library" xmlns="http://orbeon.org/oxf/xml/form-builder" xmlns:fbf="java:org.orbeon.oxf.fb.FormBuilder" xmlns:xxbl="http://orbeon.org/oxf/xml/xbl"/>
                </fr:section>
            </fr:body>
        </fr:view>
    </xh:body>
</xh:html>'