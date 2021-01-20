issue122
formDefinition_issue122_v1

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
        <xh:title>Issue 122</xh:title>
        <xf:model id="fr-form-model" xxf:expose-xpath-types="true" xxf:analysis.calculate="true">
            <!-- Main instance -->
            <xf:instance id="fr-form-instance" xxf:exclude-result-prefixes="#all" xxf:index="id">
                <form>
                    <section-1>
                        <grid-1>
                            <name/>
                        </grid-1>
                    </section-1>
                    <section-2>
                        <section-2-iteration>
                            <grid-2>
                                <street/>
                                <number/>
                                <subNumber/>
                            </grid-2>
                        </section-2-iteration>
                    </section-2>
                </form>
            </xf:instance>
            <!-- Bindings -->
            <xf:bind id="fr-form-binds" ref="instance(''fr-form-instance'')">
                <xf:bind id="section-1-bind" name="section-1" ref="section-1">
                    <xf:bind id="grid-1-bind" ref="grid-1" name="grid-1">
                        <xf:bind id="name-bind" name="name" ref="name" xxf:whitespace="trim"/>
                    </xf:bind>
                </xf:bind>
                <xf:bind id="section-2-bind" ref="section-2" name="section-2">
                    <xf:bind id="section-2-iteration-bind" ref="section-2-iteration"
                             name="section-2-iteration"/>
                </xf:bind>
            </xf:bind>
            <!-- Metadata -->
            <xf:instance id="fr-form-metadata" xxf:readonly="true" xxf:exclude-result-prefixes="#all">
                <metadata>
                    <application-name>ue</application-name>
                    <form-name>issue122</form-name>
                    <title xml:lang="en">Issue 122</title>
                    <description xml:lang="en"/>
                    <created-with-version>2020.1.202012300129 PE</created-with-version>
                    <library-versions>
                        <orbeon>1</orbeon>
                        <app>1</app>
                    </library-versions>
                </metadata>
            </xf:instance>
            <!-- Attachments -->
            <xf:instance id="fr-form-attachments" xxf:exclude-result-prefixes="#all">
                <attachments/>
            </xf:instance>
            <!-- All form resources -->
            <xf:instance xxf:readonly="true" id="fr-form-resources" xxf:exclude-result-prefixes="#all">
                <resources>
                    <resource xml:lang="en">
                        <section-1>
                            <label>Name</label>
                        </section-1>
                        <section-2>
                            <label>Library</label>
                        </section-2>
                        <name>
                            <label>Name</label>
                            <hint/>
                        </name>
                    </resource>
                </resources>
            </xf:instance>
            <xf:instance xxf:readonly="true" id="section-2-template" xxf:exclude-result-prefixes="#all">
                <section-2-iteration/>
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
                                <xf:input id="name-control" bind="name-bind" class="fr-summary fr-search">
                                    <xf:label ref="$form-resources/name/label"/>
                                    <xf:hint ref="$form-resources/name/hint"/>
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
                    <component:section-address xmlns:component="http://orbeon.org/oxf/xml/form-builder/component/ue/library"
                                               xmlns="http://orbeon.org/oxf/xml/form-builder"
                                               xmlns:fbf="java:org.orbeon.oxf.fb.FormBuilderXPathApi"
                                               xmlns:xxbl="http://orbeon.org/oxf/xml/xbl"
                                               xmlns:frf="java:org.orbeon.oxf.fr.FormRunner"/>
                </fr:section>
            </fr:body>
        </fr:view>
    </xh:body>
</xh:html>'