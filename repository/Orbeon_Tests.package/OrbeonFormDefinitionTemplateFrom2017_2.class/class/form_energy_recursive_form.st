energy recursive form
form_energy_recursive_form

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
         xmlns:fb="http://orbeon.org/oxf/xml/form-builder">
    <xh:head>
        <xh:title>Comparision</xh:title>
        <xf:model id="fr-form-model" xxf:expose-xpath-types="true">

            <!-- Main instance -->
            <xf:instance id="fr-form-instance" xxf:exclude-result-prefixes="#all" xxf:index="id">
                <form>
                    <section-1>
                        <name/>
                        <surname/>
                    </section-1>
                    <section-4>
                        <number/>
                        <code/>
                    </section-4>
                    <section-7>
                        <details/>
                    </section-7>
                    <section-9>
                        <description/>
                    </section-9>
                </form>
            </xf:instance>

            <!-- Bindings -->
            <xf:bind id="fr-form-binds" ref="instance(''fr-form-instance'')">
                <xf:bind id="section-1-bind" name="section-1" ref="section-1">
                    <xf:bind id="name-bind" name="name" ref="name"/>
                    <xf:bind id="surname-bind" ref="surname" name="surname"/>
                </xf:bind>
                <xf:bind id="section-4-bind" ref="section-4" name="section-4">
                    <xf:bind id="number-bind" ref="number" name="number"/>
                    <xf:bind id="code-bind" ref="code" name="code" type="xf:positiveInteger"/>
                </xf:bind>
                <xf:bind id="section-7-bind" ref="section-7" name="section-7">
                    <xf:bind id="details-bind" ref="details" name="details"/>
                </xf:bind>
                <xf:bind id="section-9-bind" ref="section-9" name="section-9">
                    <xf:bind id="description-bind" ref="description" name="description"/>
                </xf:bind>
            </xf:bind>

            <!-- Metadata -->
            <xf:instance xxf:readonly="true" id="fr-form-metadata" xxf:exclude-result-prefixes="#all">
                <metadata>
                    <application-name>agesic</application-name>
                    <form-name>comparision</form-name>
                    <title xml:lang="en">Comparision</title>
                    <description xml:lang="en"/>
                    <singleton>false</singleton>
                </metadata>
            </xf:instance>

            <!-- Attachments -->
            <xf:instance id="fr-form-attachments" xxf:exclude-result-prefixes="#all">
                <attachments>
                    <css mediatype="text/css" filename="" size=""/>
                    <pdf mediatype="application/pdf" filename="" size=""/>
                </attachments>
            </xf:instance>

            <!-- All form resources -->
            <!-- Don''t make readonly by default in case a service modifies the resources -->
            <xf:instance id="fr-form-resources" xxf:readonly="false" xxf:exclude-result-prefixes="#all">
                <resources>
                    <resource xml:lang="en">
                        <description>
                            <text xmlns:xxbl="http://orbeon.org/oxf/xml/xbl"
                                  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                                  xmlns:oxf="http://www.orbeon.com/oxf/processors"
                                  xmlns:xbl="http://www.w3.org/ns/xbl"
                                  xmlns:p="http://www.orbeon.com/oxf/pipeline"/>
                        </description>
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
                        <section-9>
                            <label>Section 4</label>
                            <help/>
                        </section-9>
                        <section-1>
                            <label>Section 1</label>
                        </section-1>
                        <section-4>
                            <label>Section 2</label>
                            <help/>
                        </section-4>
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
            </xf:model>
    </xh:head>
    <xh:body>
        <fr:view>
            <fr:body xmlns:xbl="http://www.w3.org/ns/xbl" xmlns:p="http://www.orbeon.com/oxf/pipeline"
                     xmlns:oxf="http://www.orbeon.com/oxf/processors">
                <fr:section id="section-1-control" bind="section-1-bind">
                    <xf:label ref="$form-resources/section-1/label"/>
                    <fr:grid id="grid-1-grid">
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
                <fr:section id="section-4-control" bind="section-4-bind">
                    <xf:label ref="$form-resources/section-4/label"/>
                    <fr:grid id="grid-2-grid">
                        <fr:c y="1" x="1" w="6">
                                <xf:input id="number-control" bind="number-bind" class="fr-summary fr-search">
                                    <xf:label ref="$form-resources/number/label"/>
                                    <xf:hint ref="$form-resources/number/hint"/>
                                    <xf:alert ref="$fr-resources/detail/labels/alert"/>
                                </xf:input>
                            </fr:c>
                        <fr:c y="1" x="7" w="6">
                                <xf:input id="code-control" bind="code-bind" class="fr-summary fr-search">
                                    <xf:label ref="$form-resources/code/label"/>
                                    <xf:hint ref="$form-resources/code/hint"/>
                                    <xf:alert ref="$fr-resources/detail/labels/alert"/>
                                </xf:input>
                            </fr:c>
                    </fr:grid>
                </fr:section>
                <fr:section id="section-7-control" bind="section-7-bind">
                    <xf:label ref="$form-resources/section-7/label"/>
                    <fr:grid id="grid-3-grid">
                        <fr:c y="1" x="1" w="12">
                                <xf:textarea id="details-control" bind="details-bind">
                                    <xf:label ref="$form-resources/details/label"/>
                                    <xf:hint ref="$form-resources/details/hint"/>
                                    <xf:alert ref="$fr-resources/detail/labels/alert"/>
                                </xf:textarea>
                            </fr:c>
                    </fr:grid>
                </fr:section>
                <fr:section id="section-9-control" bind="section-9-bind">
                    <xf:label ref="$form-resources/section-9/label"/>
                    <fr:grid id="grid-4-grid">
                        <fr:c y="1" x="1" w="12">
                                <fr:explanation xmlns:xxbl="http://orbeon.org/oxf/xml/xbl"
                                            xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                                            id="description-control"
                                            bind="description-bind">
                                    <xf:alert ref="$fr-resources/detail/labels/alert"/>
                                    <fr:text ref="$form-resources/description/text" mediatype="text/html"/>
                                </fr:explanation>
                            </fr:c>
                    </fr:grid>
                </fr:section>
            </fr:body>
        </fr:view>
    </xh:body>
</xh:html>'