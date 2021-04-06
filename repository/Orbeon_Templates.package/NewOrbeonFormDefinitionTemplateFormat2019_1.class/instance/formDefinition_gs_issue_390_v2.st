issue 390
formDefinition_gs_issue_390_v2

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
        <xh:title>Test Library</xh:title>
        <xf:model id="fr-form-model" xxf:expose-xpath-types="true" xxf:analysis.calculate="true">
            <xf:instance id="fr-form-instance" xxf:exclude-result-prefixes="#all" xxf:index="id">
                <form>
                    <section-2>
                        <grid-1>
                            <name/>
                            <surname/>
                        </grid-1>
                    </section-2>
                    <section-1>
                        <section-2-iteration>
                            <grid-2>
                                <number/>
                            </grid-2>
                        </section-2-iteration>
                    </section-1>
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
                <xf:bind id="section-2-bind" ref="section-2" name="section-2">
                    <xf:bind id="section-2-iteration-bind" ref="section-2-iteration"
                             name="section-2-iteration"/>
                </xf:bind>
                <xf:bind id="section-1-bind" ref="section-1" name="section-1"/>
                <xf:bind id="section-3-bind" ref="section-3" name="section-3">
                    <xf:bind id="section-3-iteration-bind" ref="section-3-iteration"
                             name="section-3-iteration"/>
                </xf:bind>
            </xf:bind>
            <xf:instance id="fr-form-metadata" xxf:readonly="true" xxf:exclude-result-prefixes="#all">
                <metadata>
                    <application-name>gs</application-name>
                    <form-name>test-library</form-name>
                    <title xml:lang="en">Test Library</title>
                    <description xml:lang="en"/>
                    <created-with-version>2020.1.202012300129 PE</created-with-version>
                    <updated-with-version>2020.1.1.202102012142 PE</updated-with-version>
                    <library-versions>
                        <app>2</app>
                    </library-versions>
                    <available>false</available>
                </metadata>
            </xf:instance>
            <xf:instance id="fr-form-attachments" xxf:exclude-result-prefixes="#all">
                <attachments/>
            </xf:instance>
            <xf:instance xxf:readonly="true" id="fr-form-resources" xxf:exclude-result-prefixes="#all">
                <resources>
                    <resource xml:lang="en">
                        <section-2>
                            <label>Name</label>
                        </section-2>
                        <section-1>
                            <label>Number</label>
                            <help/>
                        </section-1>
                        <section-3>
                            <label>Country</label>
                        </section-3>
                    </resource>
                </resources>
            </xf:instance>
            <xf:instance xxf:readonly="true" xxf:exclude-result-prefixes="#all" id="section-2-template">
                <section-2-iteration/>
            </xf:instance>
            <xf:instance xxf:readonly="true" xxf:exclude-result-prefixes="#all" id="section-3-template">
                <section-3-iteration/>
            </xf:instance>
        </xf:model>
    </xh:head>
    <xh:body>
        <fr:view>
            <fr:body xmlns:p="http://www.orbeon.com/oxf/pipeline" xmlns:xbl="http://www.w3.org/ns/xbl"
                     xmlns:oxf="http://www.orbeon.com/oxf/processors">
                <fr:section id="section-2-section" bind="section-2-bind" repeat="content" min="1"
                            template="instance(''section-2-template'')"
                            apply-defaults="true"
                            fb:initial-iterations="first">
                    <xf:label ref="$form-resources/section-2/label"/>
                    <component:section-1 xmlns:component="http://orbeon.org/oxf/xml/form-builder/component/gs/library"
                                         xmlns="http://orbeon.org/oxf/xml/form-builder"
                                         xmlns:fbf="java:org.orbeon.oxf.fb.FormBuilderXPathApi"
                                         xmlns:xxbl="http://orbeon.org/oxf/xml/xbl"
                                         xmlns:frf="java:org.orbeon.oxf.fr.FormRunner"/>
                </fr:section>
                <fr:section id="section-1-section" bind="section-1-bind">
                    <xf:label ref="$form-resources/section-1/label"/>
                    <component:section-2 xmlns:component="http://orbeon.org/oxf/xml/form-builder/component/gs/library"
                                         xmlns="http://orbeon.org/oxf/xml/form-builder"
                                         xmlns:fbf="java:org.orbeon.oxf.fb.FormBuilderXPathApi"
                                         xmlns:xxbl="http://orbeon.org/oxf/xml/xbl"
                                         xmlns:frf="java:org.orbeon.oxf.fr.FormRunner"/>
                </fr:section>
                <fr:section id="section-3-section" bind="section-3-bind" repeat="content" min="1"
                            template="instance(''section-3-template'')"
                            apply-defaults="true"
                            fb:initial-iterations="first">
                    <xf:label ref="$form-resources/section-3/label"/>
                    <component:section-3 xmlns:component="http://orbeon.org/oxf/xml/form-builder/component/gs/library"
                                         xmlns="http://orbeon.org/oxf/xml/form-builder"
                                         xmlns:fbf="java:org.orbeon.oxf.fb.FormBuilderXPathApi"
                                         xmlns:xxbl="http://orbeon.org/oxf/xml/xbl"
                                         xmlns:frf="java:org.orbeon.oxf.fr.FormRunner"/>
                </fr:section>
            </fr:body>
        </fr:view>
    </xh:body>
</xh:html>'