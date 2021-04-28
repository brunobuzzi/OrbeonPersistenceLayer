library forms
formSavedDefinition_ue_library_composed_form_2

	^ '<?xml version="1.0" encoding="UTF-8"?><xh:html xmlns:xh="http://www.w3.org/1999/xhtml" xmlns:ev="http://www.w3.org/2001/xml-events" xmlns:exf="http://www.exforms.org/exf/1-0" xmlns:fb="http://orbeon.org/oxf/xml/form-builder" xmlns:fr="http://orbeon.org/oxf/xml/form-runner" xmlns:saxon="http://saxon.sf.net/" xmlns:soap="http://schemas.xmlsoap.org/soap/envelope/" xmlns:sql="http://orbeon.org/oxf/xml/sql" xmlns:xf="http://www.w3.org/2002/xforms" xmlns:xi="http://www.w3.org/2001/XInclude" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xxf="http://orbeon.org/oxf/xml/xforms" xmlns:xxi="http://orbeon.org/oxf/xml/xinclude" fr:data-format-version="2019.1.0">
    <xh:head>
        <xh:meta content="text/html; charset=UTF-8" http-equiv="Content-Type"/>
        <xh:title>Library Composed Form</xh:title>
        <xf:model xxf:expose-xpath-types="true" id="fr-form-model">
            <xf:instance xxf:exclude-result-prefixes="#all" id="fr-form-instance" xxf:index="id">
                <form>
                    <section-2><grid-1>
                            <s/>
                            <k/>
                            <uuid/>
                            <oop/>
                            <assignmentOop/>
                        </grid-1>                        
                    </section-2>
                    <section-7><grid-2>
                            <username/>
                            <rol/>
                            <processId/>
                        </grid-2>                       
                    </section-7>
                    <section-11><grid-1>
                            <name/>
                            <surname/>
                        </grid-1>
                        
                    </section-11>
                    <section-14><grid-2>
                            <street/>
                            <number/>
                            <subNumber/>
                        </grid-2>                        
                    </section-14>
                </form>
            </xf:instance>
            <xf:bind id="fr-form-binds" ref="instance(''fr-form-instance'')">
                <xf:bind id="section-2-bind" name="section-2" ref="section-2"/>
                <xf:bind id="section-7-bind" name="section-7" ref="section-7"/>
                <xf:bind id="section-11-bind" name="section-11" ref="section-11"/>
                <xf:bind id="section-14-bind" name="section-14" ref="section-14"/>
            </xf:bind>
            <xf:instance xxf:readonly="true" xxf:exclude-result-prefixes="#all" id="fr-form-metadata">
                <metadata>
                    <application-name>ue</application-name>
                    <updated-with-version>2020.1.1.202102012142 PE</updated-with-version>
                    <form-name>library-composed-form2</form-name>
                    <title xml:lang="en">Library Composed Form</title>
                    <description xml:lang="en">Library Composed Form</description>
                    <description xml:lang="es"/>
                    <version-comment/>
                    <available>false</available>
                    <library-versions>
                        <orbeon>1</orbeon>
                        <app>1</app>
                    </library-versions>
                </metadata>
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
                        <section-2>
                            <label>Internal</label>
                            <help/>
                        </section-2>
                        <section-7>
                            <label>Login</label>
                            <help/>
                        </section-7>
                        <section-11>
                            <label>Name</label>
                            <help/>
                        </section-11>
                        <section-14>
                            <label>Address</label>
                            <help/>
                        </section-14>
                    </resource>
                    <resource xml:lang="es">
                        <section-2>
                            <label/>
                            <help/>
                        </section-2>
                        <section-7>
                            <label/>
                            <help/>
                        </section-7>
                        <section-11>
                            <label/>
                            <help/>
                        </section-11>
                        <section-14>
                            <label/>
                            <help/>
                        </section-14>
                    </resource>
                </resources>
            </xf:instance>
        </xf:model>
    </xh:head>
    <xh:body>
        <fr:view>
            <fr:body xmlns:p="http://www.orbeon.com/oxf/pipeline" xmlns:xbl="http://www.w3.org/ns/xbl" xmlns:oxf="http://www.orbeon.com/oxf/processors">
                <fr:section bind="section-2-bind" id="section-2-control">
                    <xf:label ref="$form-resources/section-2/label"/>
                    <component:internal-section xmlns:component="http://orbeon.org/oxf/xml/form-builder/component/orbeon/library" xmlns="http://orbeon.org/oxf/xml/form-builder" xmlns:fbf="java:org.orbeon.oxf.fb.FormBuilder" xmlns:xxbl="http://orbeon.org/oxf/xml/xbl"/>
                </fr:section>
                <fr:section bind="section-7-bind" id="section-7-control">
                    <xf:label ref="$form-resources/section-7/label"/>
                    <component:login-section xmlns:component="http://orbeon.org/oxf/xml/form-builder/component/orbeon/library" xmlns="http://orbeon.org/oxf/xml/form-builder" xmlns:fbf="java:org.orbeon.oxf.fb.FormBuilder" xmlns:xxbl="http://orbeon.org/oxf/xml/xbl"/>
                </fr:section>
                <fr:section bind="section-11-bind" id="section-11-control">
                    <xf:label ref="$form-resources/section-11/label"/>
                    <component:section-name xmlns:component="http://orbeon.org/oxf/xml/form-builder/component/ue/library" xmlns="http://orbeon.org/oxf/xml/form-builder" xmlns:fbf="java:org.orbeon.oxf.fb.FormBuilder" xmlns:xxbl="http://orbeon.org/oxf/xml/xbl"/>
                </fr:section>
                <fr:section bind="section-14-bind" id="section-14-control">
                    <xf:label ref="$form-resources/section-14/label"/>
                    <component:section-address xmlns:component="http://orbeon.org/oxf/xml/form-builder/component/ue/library" xmlns="http://orbeon.org/oxf/xml/form-builder" xmlns:fbf="java:org.orbeon.oxf.fb.FormBuilder" xmlns:xxbl="http://orbeon.org/oxf/xml/xbl"/>
                </fr:section>
            </fr:body>
        </fr:view>
    </xh:body>
</xh:html>'