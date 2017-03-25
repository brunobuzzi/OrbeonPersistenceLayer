library forms
form_ue_library

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
        <xh:title>Library Sections</xh:title>
        <xf:model id="fr-form-model" xxf:expose-xpath-types="true">
            <!-- Main instance -->
            <xf:instance id="fr-form-instance" xxf:exclude-result-prefixes="#all" xxf:index="id">
                <form>
                    <section-1>
                        <name/>
                        <surname/>
                    </section-1>
                    <section-4>
                        <street/>
                        <number/>
                        <subNumber/>
                    </section-4>
                </form>
            </xf:instance>
            <!-- Bindings -->
            <xf:bind id="fr-form-binds" ref="instance(''fr-form-instance'')">
                <xf:bind id="section-1-bind" name="section-1" ref="section-1">
                    <xf:bind id="name-bind" name="name" ref="name" xxf:whitespace="trim" required="true()"/>
                    <xf:bind id="surname-bind" ref="surname" name="surname" xxf:whitespace="trim"
                             required="true()"/>
                </xf:bind>
                <xf:bind id="section-4-bind" ref="section-4" name="section-4">
                    <xf:bind id="street-bind" ref="street" name="street" xxf:whitespace="trim"/>
                    <xf:bind id="number-bind" ref="number" name="number" xxf:whitespace="trim"/>
                    <xf:bind id="subNumber-bind" ref="subNumber" name="subNumber" xxf:whitespace="trim"/>
                </xf:bind>
            </xf:bind>
            <!-- Metadata -->
            <xf:instance xxf:readonly="true" id="fr-form-metadata" xxf:exclude-result-prefixes="#all">
                <metadata>
                    <application-name>ue</application-name>
                    <form-name>library</form-name>
                    <title xml:lang="en">Library Sections</title>
                    <description xml:lang="en"/>
                    <version-comment/>
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
            <xf:instance xxf:readonly="true" id="fr-form-resources" xxf:exclude-result-prefixes="#all">
                <resources>
                    <resource xml:lang="en">
                        <street>
                            <label>Street</label>
                            <hint/>
                        </street>
                        <number>
                            <label>Number</label>
                            <hint/>
                        </number>
                        <subNumber>
                            <label>Sub Number</label>
                            <hint/>
                        </subNumber>
                        <section-1>
                            <label>Library Name</label>
                        </section-1>
                        <section-4>
                            <label>Library Address</label>
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
            <!-- Utility instances for services -->
            <xf:instance id="fr-service-request-instance" xxf:exclude-result-prefixes="#all">
                <request/>
            </xf:instance>
            <xf:instance id="fr-service-response-instance" xxf:exclude-result-prefixes="#all">
                <response/>
            </xf:instance>
        </xf:model>
    </xh:head>
    <xh:body>
        <fr:view>
            <fr:body xmlns:xbl="http://www.w3.org/ns/xbl" xmlns:p="http://www.orbeon.com/oxf/pipeline"
                     xmlns:oxf="http://www.orbeon.com/oxf/processors">
                <fr:section id="section-1-control" bind="section-1-bind">
                    <xf:label ref="$form-resources/section-1/label"/>
                    <fr:grid>
                        <xh:tr>
                            <xh:td>
                                <xf:input id="name-control" bind="name-bind" class="fr-summary fr-search">
                                    <xf:label ref="$form-resources/name/label"/>
                                    <xf:hint ref="$form-resources/name/hint"/>
                                    <xf:alert ref="$fr-resources/detail/labels/alert"/>
                                </xf:input>
                            </xh:td>
                            <xh:td>
                                <xf:input id="surname-control" bind="surname-bind" class="fr-summary fr-search">
                                    <xf:label ref="$form-resources/surname/label"/>
                                    <xf:hint ref="$form-resources/surname/hint"/>
                                    <xf:alert ref="$fr-resources/detail/labels/alert"/>
                                </xf:input>
                            </xh:td>
                        </xh:tr>
                    </fr:grid>
                </fr:section>
                <fr:section id="section-4-control" bind="section-4-bind">
                    <xf:label ref="$form-resources/section-4/label"/>
                    <fr:grid>
                        <xh:tr>
                            <xh:td>
                                <xf:input id="street-control" bind="street-bind">
                                    <xf:label ref="$form-resources/street/label"/>
                                    <xf:hint ref="$form-resources/street/hint"/>
                                    <xf:alert ref="$fr-resources/detail/labels/alert"/>
                                </xf:input>
                            </xh:td>
                            <xh:td>
                                <xf:input id="number-control" bind="number-bind">
                                    <xf:label ref="$form-resources/number/label"/>
                                    <xf:hint ref="$form-resources/number/hint"/>
                                    <xf:alert ref="$fr-resources/detail/labels/alert"/>
                                </xf:input>
                            </xh:td>
                            <xh:td>
                                <xf:input id="subNumber-control" bind="subNumber-bind">
                                    <xf:label ref="$form-resources/subNumber/label"/>
                                    <xf:hint ref="$form-resources/subNumber/hint"/>
                                    <xf:alert ref="$fr-resources/detail/labels/alert"/>                                                
                                </xf:input>
                            </xh:td>
                        </xh:tr>
                    </fr:grid>
                </fr:section>
            </fr:body>
        </fr:view>
    </xh:body>
</xh:html>'