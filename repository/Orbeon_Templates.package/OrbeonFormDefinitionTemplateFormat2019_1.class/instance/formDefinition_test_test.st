other
formDefinition_test_test

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
        <xh:title>Untitled Form</xh:title>
        <xf:model id="fr-form-model" xxf:expose-xpath-types="true">
            <xf:instance id="fr-form-instance" xxf:exclude-result-prefixes="#all" xxf:index="id">
                <form>
                    <section-1>
                        <grid-1>
                            <data/>
                            <dataType/>
                        </grid-1>
                    </section-1>
                    <section-2>
                        <grid-2>
                            <name/>
                            <phone/>
                        </grid-2>
                    </section-2>
                    <section-3>
                        <section-3-iteration>
                            <grid-3>
                                <details/>
                                <date/>
                                <option/>
                            </grid-3>
                            <grid-4>
                                <grid-4-iteration>
                                    <control-1/>
                                    <time/>
                                    <checkOptions/>
                                </grid-4-iteration>
                            </grid-4>
                            <section-4>
                                <section-4-iteration>
                                    <grid-5>
                                        <radio-buttons/>
                                        <date2/>
                                    </grid-5>
                                </section-4-iteration>
                            </section-4>
                        </section-3-iteration>
                    </section-3>
                </form>
            </xf:instance>
            <xf:bind id="fr-form-binds" ref="instance(''fr-form-instance'')">
                <xf:bind id="section-1-bind" name="section-1" ref="section-1">
                    <xf:bind id="grid-1-bind" ref="grid-1" name="grid-1">
                        <xf:bind id="data-bind" name="data" ref="data" xxf:whitespace="trim"/>
                        <xf:bind id="dataType-bind" ref="dataType" name="dataType" xxf:whitespace="trim"/>
                    </xf:bind>
                </xf:bind>
                <xf:bind id="section-2-bind" ref="section-2" name="section-2">
                    <xf:bind id="grid-2-bind" ref="grid-2" name="grid-2">
                        <xf:bind id="name-bind" ref="name" name="name" xxf:whitespace="trim"/>
                        <xf:bind id="phone-bind" ref="phone" name="phone" xxf:whitespace="trim"
                                 type="xf:integer"/>
                    </xf:bind>
                </xf:bind>
                <xf:bind id="section-3-bind" ref="section-3" name="section-3">
                    <xf:bind id="section-3-iteration-bind" ref="section-3-iteration"
                             name="section-3-iteration">
                        <xf:bind id="grid-3-bind" ref="grid-3" name="grid-3">
                            <xf:bind id="details-bind" ref="details" name="details"/>
                            <xf:bind id="date-bind" ref="date" name="date" type="xf:date"/>
                            <xf:bind id="option-bind" ref="option" name="option" type="xf:boolean"/>
                        </xf:bind>
                        <xf:bind id="grid-4-bind" ref="grid-4" name="grid-4">
                            <xf:bind id="grid-4-iteration-bind" ref="grid-4-iteration" name="grid-4-iteration">
                                <xf:bind id="control-1-bind" ref="control-1" name="control-1" type="xf:decimal"/>
                                <xf:bind id="time-bind" ref="time" name="time" type="xf:time"
                                         xxf:default="current-time()"/>
                                <xf:bind id="checkOptions-bind" ref="checkOptions" name="checkOptions"/>
                            </xf:bind>
                        </xf:bind>
                        <xf:bind id="section-4-bind" ref="section-4" name="section-4">
                            <xf:bind id="section-4-iteration-bind" ref="section-4-iteration"
                                     name="section-4-iteration">
                                <xf:bind id="grid-5-bind" ref="grid-5" name="grid-5">
                                    <xf:bind id="radio-buttons-bind" ref="radio-buttons" name="radio-buttons"/>
                                    <xf:bind id="date2-bind" ref="date2" name="date2" type="xf:date"/>
                                </xf:bind>
                            </xf:bind>
                        </xf:bind>
                    </xf:bind>
                </xf:bind>
            </xf:bind>
            <xf:instance xxf:readonly="true" id="fr-form-metadata" xxf:exclude-result-prefixes="#all">
                <metadata>
                    <application-name>test</application-name>
                    <updated-with-version>2020.1.1.202102012142 PE</updated-with-version>
                    <form-name>test</form-name>
                    <title xml:lang="en">Untitled Form</title>
                    <description xml:lang="en"/>
                    <permissions>
                        <permission operations="read">
                            <group-member/>
                        </permission>
                        <permission operations="read update">
                            <owner/>
                        </permission>
                        <permission operations="create"/>
                        <permission operations="read update delete">
                            <user-role any-of="admins"/>
                        </permission>
                    </permissions>
                    <available>true</available>
                </metadata>
            </xf:instance>
            <xf:instance id="fr-form-attachments" xxf:exclude-result-prefixes="#all">
                <attachments>
                    <css mediatype="text/css" filename="" size=""/>
                    <pdf mediatype="application/pdf" filename="" size=""/>
                </attachments>
            </xf:instance>
            <xf:instance xxf:readonly="true" id="fr-form-resources" xxf:exclude-result-prefixes="#all">
                <resources>
                    <resource xml:lang="en">
                        <radio-buttons>
                            <label/>
                            <hint/>
                            <item>
                                <label>Option 1</label>
                                <hint/>
                                <value>1</value>
                            </item>
                            <item>
                                <label>Option 2</label>
                                <hint/>
                                <value>2</value>
                            </item>
                        </radio-buttons>
                        <date2>
                            <label/>
                            <hint/>
                        </date2>
                        <control-1>
                            <label>Number</label>
                            <hint/>
                        </control-1>
                        <time>
                            <label/>
                            <hint>Time</hint>
                        </time>
                        <checkOptions>
                            <label/>
                            <hint/>
                            <item>
                                <label>Option 1</label>
                                <hint/>
                                <value>1</value>
                            </item>
                            <item>
                                <label>Option 2</label>
                                <hint/>
                                <value>2</value>
                            </item>
                        </checkOptions>
                        <section-4>
                            <label>Inner Section</label>
                            <help/>
                        </section-4>
                        <details>
                            <label/>
                            <hint/>
                        </details>
                        <date>
                            <label/>
                            <hint/>
                        </date>
                        <option>
                            <label>Option</label>
                            <hint/>
                        </option>
                        <name>
                            <label>Name</label>
                            <hint/>
                        </name>
                        <phone>
                            <label>Phone</label>
                            <hint/>
                        </phone>
                        <section-1>
                            <label>Test</label>
                        </section-1>
                        <section-2>
                            <label>Section 2</label>
                            <help/>
                        </section-2>
                        <section-3>
                            <label>Repeat Data</label>
                            <help/>
                        </section-3>
                        <data>
                            <label>Type something:</label>
                            <hint/>                            
                        </data>
                        <dataType>
                            <label>Data Type</label>
                            <hint/>
                        </dataType>
                    </resource>
                </resources>
            </xf:instance>
            <xf:instance xxf:readonly="true" xxf:exclude-result-prefixes="#all" id="section-3-template">
                <section-3-iteration>
                    <grid-3>
                        <details/>
                        <date/>
                        <option/>
                    </grid-3>
                    <grid-4>
                        <grid-4-iteration>
                            <control-1/>
                            <time/>
                            <checkOptions/>
                        </grid-4-iteration>
                    </grid-4>
                    <section-4>
                        <section-4-iteration>
                            <grid-5>
                                <radio-buttons/>
                                <date2/>
                            </grid-5>
                        </section-4-iteration>
                    </section-4>
                </section-3-iteration>
            </xf:instance>
            <xf:instance xxf:readonly="true" xxf:exclude-result-prefixes="#all" id="grid-4-template">
                <grid-4-iteration>
                    <control-1/>
                    <time/>
                    <checkOptions/>
                </grid-4-iteration>
            </xf:instance>
            <xf:instance xxf:readonly="true" xxf:exclude-result-prefixes="#all" id="section-4-template">
                <section-4-iteration>
                    <grid-5>
                        <radio-buttons/>
                        <date2/>
                    </grid-5>
                </section-4-iteration>
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
                                <xf:input id="data-control" bind="data-bind" class="fr-summary fr-search">
                                    <xf:label ref="$form-resources/data/label"/>
                                    <xf:hint ref="$form-resources/data/hint"/>
                                <xf:alert ref="$fr-resources/detail/labels/alert"/>
                                </xf:input>
                            </fr:c>
                        <fr:c y="1" x="7" w="6">
                            <xf:input id="dataType-control" bind="dataType-bind" class="fr-summary fr-search">
                                <xf:label ref="$form-resources/dataType/label"/>
                                <xf:hint ref="$form-resources/dataType/hint"/>
                                <xf:alert ref="$fr-resources/detail/labels/alert"/>
                            </xf:input>
                        </fr:c>
                    </fr:grid>
                </fr:section>
                <fr:section id="section-2-section" bind="section-2-bind">
                    <xf:label ref="$form-resources/section-2/label"/>
                    <fr:grid id="grid-2-grid" bind="grid-2-bind">
                        <fr:c x="1" y="1" w="8">
                            <xf:input id="name-control" bind="name-bind" class="fr-summary fr-search">
                                <xf:label ref="$form-resources/name/label"/>
                                <xf:hint ref="$form-resources/name/hint"/>
                                <xf:alert ref="$fr-resources/detail/labels/alert"/>
                            </xf:input>
                        </fr:c>
                        <fr:c x="9" y="1" w="4">
                            <fr:number id="phone-control" bind="phone-bind" class="fr-summary fr-search">
                                <xf:label ref="$form-resources/phone/label"/>
                                <xf:hint ref="$form-resources/phone/hint"/>
                                <xf:alert ref="$fr-resources/detail/labels/alert"/>
                            </fr:number>
                        </fr:c>
                    </fr:grid>
                </fr:section>
                <fr:section id="section-3-section" bind="section-3-bind" repeat="content" min="1"
                            template="instance(''section-3-template'')"
                            apply-defaults="true"
                            fb:initial-iterations="first">
                    <xf:label ref="$form-resources/section-3/label"/>
                    <fr:grid id="grid-3-grid" bind="grid-3-bind">
                        <fr:c x="1" y="1" w="6">
                            <xf:textarea id="details-control" bind="details-bind">
                                <xf:label ref="$form-resources/details/label"/>
                                <xf:hint ref="$form-resources/details/hint"/>
                                <xf:alert ref="$fr-resources/detail/labels/alert"/>
                            </xf:textarea>
                        </fr:c>
                        <fr:c x="7" y="1" w="4">
                            <fr:dropdown-date xmlns="http://orbeon.org/oxf/xml/form-builder"
                                              xmlns:xxbl="http://orbeon.org/oxf/xml/xbl"
                                              id="date-control"
                                              bind="date-bind">
                                <xf:label ref="$form-resources/date/label"/>
                                <xf:hint ref="$form-resources/date/hint"/>
                                <xf:alert ref="$fr-resources/detail/labels/alert"/>
                            </fr:dropdown-date>
                        </fr:c>
                        <fr:c x="11" y="1" w="2" h="1">
                            <fr:yesno-input xmlns="http://orbeon.org/oxf/xml/form-builder"
                                            xmlns:xxbl="http://orbeon.org/oxf/xml/xbl"
                                            id="option-control"
                                            bind="option-bind"
                                            class="fr-summary fr-search">
                                <xf:label ref="$form-resources/option/label"/>
                                <xf:hint ref="$form-resources/option/hint"/>
                                <xf:alert ref="$fr-resources/detail/labels/alert"/>
                            </fr:yesno-input>
                        </fr:c>
                    </fr:grid>
                    <fr:grid id="grid-4-grid" bind="grid-4-bind" repeat="content" min="1"
                             template="instance(''grid-4-template'')"
                             apply-defaults="true"
                             fb:initial-iterations="first">
                        <fr:c x="1" y="1" w="5">
                            <fr:number xmlns="http://orbeon.org/oxf/xml/form-builder"
                                       xmlns:xxbl="http://orbeon.org/oxf/xml/xbl"
                                       xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                                       id="control-1-control"
                                       bind="control-1-bind">
                                <xf:label ref="$form-resources/control-1/label"/>
                                <xf:hint ref="$form-resources/control-1/hint"/>
                                <xf:alert ref="$fr-resources/detail/labels/alert"/>
                            </fr:number>
                        </fr:c>
                        <fr:c x="6" y="1" w="5" h="1">
                            <fr:time xmlns:map="http://www.w3.org/2005/xpath-functions/map"
                                     xmlns:array="http://www.w3.org/2005/xpath-functions/array"
                                     id="time-control"
                                     bind="time-bind">
                                <xf:label ref="$form-resources/time/label"/>
                                <xf:hint ref="$form-resources/time/hint"/>
                                <xf:alert ref="$fr-resources/detail/labels/alert"/>
                            </fr:time>
                        </fr:c>
                        <fr:c x="11" y="1" w="2" h="1">
                            <xf:select id="checkOptions-control" appearance="full" bind="checkOptions-bind">
                                <xf:label ref="$form-resources/checkOptions/label"/>
                                <xf:hint ref="$form-resources/checkOptions/hint"/>
                                <xf:alert ref="$fr-resources/detail/labels/alert"/>
                                <xf:itemset ref="$form-resources/checkOptions/item">
                                    <xf:label ref="label"/>
                                    <xf:value ref="value"/>
                                    <xf:hint ref="hint"/>
                                </xf:itemset>
                            </xf:select>
                        </fr:c>
                    </fr:grid>
                    <fr:section id="section-4-section" bind="section-4-bind" repeat="content" min="1"
                                template="instance(''section-4-template'')"
                                apply-defaults="true"
                                fb:initial-iterations="first">
                        <xf:label ref="$form-resources/section-4/label"/>
                        <fr:grid id="grid-5-grid" bind="grid-5-bind">
                            <fr:c x="1" y="1" w="8">
                                <fr:open-select1 xmlns:xxbl="http://orbeon.org/oxf/xml/xbl" id="radio-buttons-control"
                                                 bind="radio-buttons-bind">
                                    <xf:label ref="$form-resources/radio-buttons/label"/>
                                    <xf:hint ref="$form-resources/radio-buttons/hint"/>
                                    <xf:alert ref="$fr-resources/detail/labels/alert"/>
                                    <xf:itemset ref="$form-resources/radio-buttons/item">
                                        <xf:label ref="label"/>
                                        <xf:value ref="value"/>
                                        <xf:hint ref="hint"/>
                                    </xf:itemset>
                                </fr:open-select1>
                            </fr:c>
                            <fr:c x="9" y="1" w="4" h="1">
                                <fr:fields-date xmlns="http://orbeon.org/oxf/xml/form-builder"
                                                xmlns:xxbl="http://orbeon.org/oxf/xml/xbl"
                                                id="date2-control"
                                                bind="date2-bind">
                                    <xf:label ref="$form-resources/date2/label"/>
                                    <xf:hint ref="$form-resources/date2/hint"/>
                                    <xf:alert ref="$fr-resources/detail/labels/alert"/>
                                </fr:fields-date>
                            </fr:c>
                        </fr:grid>
                    </fr:section>
                </fr:section>
            </fr:body>
        </fr:view>
    </xh:body>
</xh:html>'