form comparison
formDefinition_agesic_comparison_v1

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
        <xh:title>Comparision</xh:title>
        <xf:model id="fr-form-model" xxf:expose-xpath-types="true">
            <xf:instance id="fr-form-instance" xxf:exclude-result-prefixes="#all" xxf:index="id">
                <form>
                    <section-1>
                        <grid-1>
                            <name2/>
                            <surname2/>
                        </grid-1>
                    </section-1>
                    <section-4>
                        <grid-2>
                            <number/>
                            <code/>
                        </grid-2>
                    </section-4>
                    <section-7>
                        <grid-3>
                            <details/>
                        </grid-3>
                    </section-7>
                </form>
            </xf:instance>
            <xf:bind id="fr-form-binds" ref="instance(''fr-form-instance'')">
                <xf:bind id="section-1-bind" name="section-1" ref="section-1">
                    <xf:bind id="grid-1-bind" ref="grid-1" name="grid-1">
                        <xf:bind id="name2-bind" name="name2" ref="name2"/>
                        <xf:bind id="surname2-bind" ref="surname2" name="surname2"/>
                    </xf:bind>
                </xf:bind>
                <xf:bind id="section-4-bind" ref="section-4" name="section-4">
                    <xf:bind id="grid-2-bind" ref="grid-2" name="grid-2">
                        <xf:bind id="number-bind" ref="number" name="number" type="xf:integer"/>
                        <xf:bind id="code-bind" ref="code" name="code" type="xf:decimal"/>
                    </xf:bind>
                </xf:bind>
                <xf:bind id="section-7-bind" ref="section-7" name="section-7">
                    <xf:bind id="grid-3-bind" ref="grid-3" name="grid-3">
                        <xf:bind id="details-bind" ref="details" name="details"/>
                    </xf:bind>
                </xf:bind>
            </xf:bind>
            <xf:instance xxf:readonly="true" id="fr-form-metadata" xxf:exclude-result-prefixes="#all">
                <metadata>
                    <application-name>agesic</application-name>
                    <updated-with-version>2020.1.1.202102012142 PE</updated-with-version>
                    <form-name>comparison</form-name>
                    <title xml:lang="en">Comparision</title>
                    <description xml:lang="en"/>
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
                        <details>
                            <label>Details</label>
                            <hint/>
                        </details>
                        <number>
                            <label>Number</label>
                            <hint/>
                        </number>
                        <code>
                            <label>Code</label>
                            <hint/>
                        </code>
                        <section-7>
                            <label>Section 3</label>
                            <help/>
                        </section-7>
                        <section-1>
                            <label>Section 1</label>
                        </section-1>
                        <section-4>
                            <label>Section 2</label>
                            <help/>
                        </section-4>
                        <name2>
                            <label>Name</label>
                            <hint/>
                        </name2>
                        <surname2>
                            <label>Surname</label>
                            <hint/>
                        </surname2>
                    </resource>
                </resources>
            </xf:instance>
            </xf:model>
    </xh:head>
    <xh:body>
        <fr:view>
            <fr:body xmlns:p="http://www.orbeon.com/oxf/pipeline" xmlns:xbl="http://www.w3.org/ns/xbl"
                     xmlns:oxf="http://www.orbeon.com/oxf/processors">
                <fr:section id="section-1-control" bind="section-1-bind">
                    <xf:label ref="$form-resources/section-1/label"/>
                    <fr:grid id="grid-1-grid" bind="grid-1-bind">
                        <fr:c y="1" x="1" w="6">
                                <xf:input id="name2-control" bind="name2-bind" class="fr-summary fr-search">
                                    <xf:label ref="$form-resources/name2/label"/>
                                    <xf:hint ref="$form-resources/name2/hint"/>
                                    <xf:alert ref="$fr-resources/detail/labels/alert"/>
                                </xf:input>
                            </fr:c>
                        <fr:c y="1" x="7" w="6">
                                <xf:input id="surname2-control" bind="surname2-bind" class="fr-summary fr-search">
                                    <xf:label ref="$form-resources/surname2/label"/>
                                    <xf:hint ref="$form-resources/surname2/hint"/>
                                    <xf:alert ref="$fr-resources/detail/labels/alert"/>
                                </xf:input>
                            </fr:c>
                    </fr:grid>
                </fr:section>
                <fr:section id="section-4-control" bind="section-4-bind">
                    <xf:label ref="$form-resources/section-4/label"/>
                    <fr:grid id="grid-2-grid" bind="grid-2-bind">
                        <fr:c y="1" x="1" w="6">
                                <xf:input id="number-control" bind="number-bind" class="fr-search">
                                    <xf:label ref="$form-resources/number/label"/>
                                    <xf:hint ref="$form-resources/number/hint"/>
                                    <xf:alert ref="$fr-resources/detail/labels/alert"/>                                    
                                </xf:input>
                            </fr:c>
                        <fr:c y="1" x="7" w="6">
                                <fr:number id="code-control" bind="code-bind" class="fr-summary">
                                    <xf:label ref="$form-resources/code/label"/>
                                    <xf:hint ref="$form-resources/code/hint"/>
                                    <xf:alert ref="$fr-resources/detail/labels/alert"/>
                                </fr:number>
                            </fr:c>
                    </fr:grid>
                </fr:section>
                <fr:section id="section-7-control" bind="section-7-bind">
                    <xf:label ref="$form-resources/section-7/label"/>
                    <fr:grid id="grid-3-grid" bind="grid-3-bind">
                        <fr:c y="1" x="1" w="12">
                                <xf:textarea id="details-control" bind="details-bind">
                                    <xf:label ref="$form-resources/details/label"/>
                                    <xf:hint ref="$form-resources/details/hint"/>
                                    <xf:alert ref="$fr-resources/detail/labels/alert"/>
                                </xf:textarea>
                            </fr:c>
                    </fr:grid>
                </fr:section>
            </fr:body>
        </fr:view>
    </xh:body>
</xh:html>'