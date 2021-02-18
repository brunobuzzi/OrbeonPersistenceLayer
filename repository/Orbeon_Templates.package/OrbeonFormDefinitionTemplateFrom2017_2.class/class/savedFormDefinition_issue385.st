issue385-393
savedFormDefinition_issue385

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
                    <description xml:lang="en"/><created-with-version>2020.1.1.202102012142 PE</created-with-version><updated-with-version>2020.1.1.202102012142 PE</updated-with-version><library-versions><app>1</app></library-versions>
                <available>true</available></metadata>
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

        </xf:model>
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