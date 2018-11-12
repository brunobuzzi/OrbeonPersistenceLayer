other
form_example4

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
        <xh:meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <xh:title>Test</xh:title>
        <xf:model id="fr-form-model" xxf:expose-xpath-types="true">
         <!-- Main instance -->
         <xf:instance id="fr-form-instance" xxf:exclude-result-prefixes="#all" xxf:index="id">
                <form>
                    <section-1>
                        <section-1-iteration>
                            <name/>
                            <surname/>
                            <phone/>
                            <mail/>
                            <section-7>
                                <control-8/>
                                <mobile/>
                                <grid-10>
                                    <grid-10-iteration>
                                        <moneySubject/>
                                        <quantity/>
                                        <currency/>
                                    </grid-10-iteration>
                                </grid-10>
                            </section-7>
                        </section-1-iteration>
                    </section-1>
                    <section-14>
                        <date1/>
                        <dateTime/>
                        <date2/>
                        <date3/>
                        <details/>
                        <type/>
                        <grid-19>
                            <grid-19-iteration>
                                <options/>
                                <otherOptions/>
                            </grid-19-iteration>
                        </grid-19>
                        <section-24>
                            <formatedText/>
                            <fileAttachment filename="query.xml" mediatype="text/xml" size="44">file:/opt/apache-tomcat-6.0.20/work/Catalina/www.orbeon.com/exist/cocoon-files/cache-dir/xforms_upload_6277316898590994612.tmp?filename=query.xml&amp;mediatype=text%2Fxml&amp;size=44&amp;mac=bf85b292873cc3a16998f1079bffe4e4225dbcae</fileAttachment>
                            <imageAttachment filename="Snapshot_20150316.JPG" mediatype="image/jpeg" size="22588">file:/opt/apache-tomcat-6.0.20/work/Catalina/www.orbeon.com/exist/cocoon-files/cache-dir/xforms_upload_1730605233090086650.tmp?filename=Snapshot_20150316.JPG&amp;mediatype=image%2Fjpeg&amp;size=22588&amp;mac=712d1a563c8150a94d6e6518984c9864d3c3af95</imageAttachment>
                            <imageAnnotation>
                                <image filename="" mediatype="" size=""/>
                                <annotation/>
                            </imageAnnotation>
                            <autocomplete label=""/>
                        </section-24>
                    </section-14>
                </form>
            </xf:instance>
            <!-- Bindings -->
         <xf:bind id="fr-form-binds" ref="instance(''fr-form-instance'')">
                <xf:bind id="section-1-bind" name="section-1" ref="section-1">
                    <xf:bind id="section-1-iteration-bind" ref="section-1-iteration"
                             name="section-1-iteration">
                        <xf:bind id="name-bind" name="name" ref="name" required="true()"/>
                        <xf:bind id="surname-bind" ref="surname" name="surname" required="true()"/>
                        <xf:bind id="phone-bind" ref="phone" name="phone"
                                 constraint=". = '''' or matches(., ''^\d{10}$'')"/>
                        <xf:bind id="mail-bind" ref="mail" name="mail" type="xf:email" required="true()"/>
                        <xf:bind id="section-7-bind" ref="section-7" name="section-7">
                            <xf:bind id="control-8-bind" ref="control-8" name="control-8"/>
                            <xf:bind id="mobile-bind" ref="mobile" name="mobile"/>
                            <xf:bind id="grid-10-bind" ref="grid-10" name="grid-10">
                                <xf:bind id="grid-10-iteration-bind" ref="grid-10-iteration" name="grid-10-iteration">
                                    <xf:bind id="quantity-bind" ref="quantity" name="quantity" type="xf:decimal"/>
                                    <xf:bind id="currency-bind" ref="currency" name="currency" type="xf:decimal"/>
                                    <xf:bind id="moneySubject-bind" ref="moneySubject" name="moneySubject"/>
                                </xf:bind>
                            </xf:bind>
                        </xf:bind>
                    </xf:bind>
                </xf:bind>
                <xf:bind id="section-14-bind" ref="section-14" name="section-14">
                    <xf:bind id="date1-bind" ref="date1" name="date1" type="xf:date"/>
                    <xf:bind id="dateTime-bind" ref="dateTime" name="dateTime" type="xf:dateTime"/>
                    <xf:bind id="date2-bind" ref="date2" name="date2" type="xf:date"/>
                    <xf:bind id="date3-bind" ref="date3" name="date3" type="xf:date"/>
                    <xf:bind id="grid-19-bind" ref="grid-19" name="grid-19">
                        <xf:bind id="grid-19-iteration-bind" ref="grid-19-iteration" name="grid-19-iteration">
                            <xf:bind id="options-bind" ref="options" name="options"/>
                            <xf:bind id="otherOptions-bind" ref="otherOptions" name="otherOptions"/>
                        </xf:bind>
                    </xf:bind>
                    <xf:bind id="details-bind" ref="details" name="details"/>
                    <xf:bind id="type-bind" ref="type" name="type"/>
                    <xf:bind id="section-24-bind" ref="section-24" name="section-24">
                        <xf:bind id="formatedText-bind" ref="formatedText" name="formatedText"/>
                        <xf:bind id="fileAttachment-bind" ref="fileAttachment" name="fileAttachment"
                                 type="xf:anyURI"/>
                        <xf:bind id="imageAttachment-bind" ref="imageAttachment" name="imageAttachment"
                                 type="xf:anyURI"/>
                        <xf:bind id="imageAnnotation-bind" ref="imageAnnotation" name="imageAnnotation"/>
                        <xf:bind id="autocomplete-bind" ref="autocomplete" name="autocomplete"/>
                    </xf:bind>
                </xf:bind>
            </xf:bind>
            <!-- Metadata -->
         <xf:instance xxf:readonly="true" id="fr-form-metadata" xxf:exclude-result-prefixes="#all">
                <metadata>
                    <application-name>agesic</application-name>
                    <form-name>test</form-name>
                    <title xml:lang="en">Test</title>
                    <description xml:lang="en"/>
                    <permissions>
                        <permission operations="read update">
                            <group-member/>
                        </permission>
                        <permission operations="read update delete">
                            <owner/>
                        </permission>
                        <permission operations="create"/>
                        <permission operations="read delete">
                            <user-role any-of="orbeon-role"/>
                        </permission>
                    </permissions>
                    <singleton>false</singleton>
                </metadata>
            </xf:instance>
            <!-- Attachments -->
         <xf:instance id="fr-form-attachments" xxf:exclude-result-prefixes="#all">
                <attachments>
                    <css mediatype="text/css" filename="" size=""/>
                    <pdf mediatype="application/pdf" filename="Dec_Jurada_Miem.pdf" size="85471">file:/var/cache/tomcat/temp/xforms_upload_4574241681918696094.tmp?filename=Dec_Jurada_Miem.pdf&amp;mediatype=application%2Fpdf&amp;size=85471&amp;mac=e483cd29568e074402e8461223977d0ac23be915</pdf>
                </attachments>
            </xf:instance>
            <!-- All form resources -->
         <!-- Dont make readonly by default in case a service modifies the resources -->
         <xf:instance id="fr-form-resources" xxf:readonly="false" xxf:exclude-result-prefixes="#all">
                <resources>
                    <resource xml:lang="en">
                        <formatedText>
                            <label>Formatted Text</label>
                            <hint/>
                        </formatedText>
                        <fileAttachment>
                            <label>Attach Document</label>
                            <hint/>
                        </fileAttachment>
                        <imageAttachment>
                            <label>Image Attachment</label>
                            <hint/>
                        </imageAttachment>
                        <imageAnnotation>
                            <label>Annotation</label>
                            <hint/>
                        </imageAnnotation>
                        <autocomplete>
                            <label>Autocomplete</label>
                            <hint/>
                        </autocomplete>
                        <options>
                            <label>Options</label>
                            <hint/>
                            <item>
                                <label>First choice</label>
                                <value>1</value>
                                <hint/>
                            </item>
                            <item>
                                <label>Second choice</label>
                                <value>2</value>
                                <hint/>
                            </item>
                            <item>
                                <label>Third choice</label>
                                <value>3</value>
                                <hint/>
                            </item>
                        </options>
                        <otherOptions>
                            <label>Other Options</label>
                            <hint/>
                            <item>
                                <label>First choice</label>
                                <value>1</value>
                            </item>
                            <item>
                                <label>Second choice</label>
                                <value>2</value>
                            </item>
                            <item>
                                <label>Third choice</label>
                                <value>3</value>
                            </item>
                        </otherOptions>
                        <section-24>
                            <label>Section 2.1</label>
                            <help/>
                        </section-24>
                        <date1>
                            <label>Date 1</label>
                            <hint/>
                        </date1>
                        <dateTime>
                            <label>Date and Time</label>
                            <hint/>
                        </dateTime>
                        <date2>
                            <label>Date 2</label>
                            <hint/>
                        </date2>
                        <date3>
                            <label>Date 3</label>
                            <hint/>
                        </date3>
                        <details>
                            <label>Details</label>
                            <hint/>
                        </details>
                        <type>
                            <label>Type</label>
                            <hint/>
                            <item>
                                <label>First choice</label>
                                <value>1</value>
                                <hint/>
                            </item>
                            <item>
                                <label>Second choice</label>
                                <value>2</value>
                                <hint/>
                            </item>
                            <item>
                                <label>Third choice</label>
                                <value>3</value>
                                <hint/>
                            </item>
                        </type>
                        <moneySubject>
                            <label>Subject</label>
                            <hint/>
                            <item>
                                <label>First choice</label>
                                <value>1</value>
                            </item>
                            <item>
                                <label>Second choice</label>
                                <value>2</value>
                            </item>
                            <item>
                                <label>Third choice</label>
                                <value>3</value>
                            </item>
                        </moneySubject>
                        <quantity>
                            <label>Quantity</label>
                            <hint/>
                        </quantity>
                        <currency>
                            <label>Currency</label>
                            <hint/>
                        </currency>
                        <section-14>
                            <label>Section 2</label>
                            <help/>
                        </section-14>
                        <control-8>
                            <label>Here we enter the mobile phones</label>
                            <hint/>
                        </control-8>
                        <mobile>
                            <label>Mobile</label>
                            <hint/>
                        </mobile>
                        <section-1>
                            <label>Section 1</label>
                        </section-1>
                        <name>
                            <label>Name</label>
                            <hint/>
                        </name>
                        <surname>
                            <label>Surname</label>
                            <hint/>
                        </surname>
                        <phone>
                            <label>Phone</label>
                            <hint/>
                        </phone>
                        <mail>
                            <label>Mail</label>
                            <hint/>
                        </mail>
                        <section-7>
                            <label>Complex Data</label>
                            <help/>
                        </section-7>
                    </resource>
                </resources>
            </xf:instance>
            <xf:instance xxf:readonly="true" xxf:exclude-result-prefixes="#all" id="section-1-template">
                <section-1-iteration>
                    <name/>
                    <surname/>
                    <phone/>
                    <mail/>
                    <section-7>
                        <control-8/>
                        <mobile/>
                        <grid-10>
                            <grid-10-iteration>
                                <quantity/>
                                <currency/>
                                <moneySubject/>
                            </grid-10-iteration>
                        </grid-10>
                    </section-7>
                </section-1-iteration>
            </xf:instance>
            <xf:instance xxf:readonly="true" xxf:exclude-result-prefixes="#all" id="grid-10-template">
                <grid-10-iteration>
                    <quantity/>
                    <currency/>
                    <moneySubject/>
                </grid-10-iteration>
            </xf:instance>
            <xf:instance xxf:readonly="true" xxf:exclude-result-prefixes="#all" id="grid-19-template">
                <grid-19-iteration>
                    <options/>
                    <otherOptions/>
                </grid-19-iteration>
            </xf:instance>
        </xf:model>
   </xh:head>
   <xh:body>
        <fr:view>
            <fr:body xmlns:xbl="http://www.w3.org/ns/xbl" xmlns:p="http://www.orbeon.com/oxf/pipeline"
                     xmlns:oxf="http://www.orbeon.com/oxf/processors">
                <fr:section id="section-1-control" bind="section-1-bind" repeat="content" min="1"
                            template="instance(''section-1-template'')">
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
                        <fr:c y="2" x="1" w="6">
                                <fr:us-phone xmlns="http://orbeon.org/oxf/xml/form-builder"
                                         xmlns:xxbl="http://orbeon.org/oxf/xml/xbl"
                                         id="phone-control"
                                         bind="phone-bind"
                                         class="fr-summary fr-search">
                                    <xf:label ref="$form-resources/phone/label"/>
                                    <xf:hint ref="$form-resources/phone/hint"/>
                                    <xf:alert ref="$fr-resources/detail/labels/alert"/>
                                </fr:us-phone>
                            </fr:c>
                        <fr:c y="2" x="7" w="6">
                                <xf:input id="mail-control" bind="mail-bind">
                                    <xf:label ref="$form-resources/mail/label"/>
                                    <xf:hint ref="$form-resources/mail/hint"/>
                                    <xf:alert ref="$fr-resources/detail/labels/alert"/>
                                </xf:input>
                            </fr:c>
                    </fr:grid>
                    <fr:section id="section-7-control" bind="section-7-bind">
                        <xf:label ref="$form-resources/section-7/label"/>
                        <fr:grid id="grid-2-grid">
                            <fr:c y="1" x="1" w="12">
                                    <xf:output id="control-8-control" bind="control-8-bind">
                                        <xf:label ref="$form-resources/control-8/label"/>
                                        <xf:hint ref="$form-resources/control-8/hint"/>
                                        <xf:alert ref="$fr-resources/detail/labels/alert"/>
                                    </xf:output>
                                </fr:c>
                            <fr:c y="2" x="1" w="12">
                                    <xf:input id="mobile-control" bind="mobile-bind">
                                        <xf:label ref="$form-resources/mobile/label"/>
                                        <xf:hint ref="$form-resources/mobile/hint"/>
                                        <xf:alert ref="$fr-resources/detail/labels/alert"/>
                                    </xf:input>
                                </fr:c>
                        </fr:grid>
                        <fr:grid id="grid-10-grid" repeat="content" bind="grid-10-bind"
                                 template="instance(''grid-10-template'')"
                                 min="1">
                            <fr:c y="1" x="1" w="4">
                                    <fr:dropdown-select1 xmlns:xxbl="http://orbeon.org/oxf/xml/xbl" id="moneySubject-control"
                                                     bind="moneySubject-bind">
                                        <xf:label ref="$form-resources/moneySubject/label"/>
                                        <xf:hint ref="$form-resources/moneySubject/hint"/>
                                        <xf:alert ref="$fr-resources/detail/labels/alert"/>
                                        <xf:itemset ref="$form-resources/moneySubject/item">
                                            <xf:label ref="label"/>
                                            <xf:value ref="value"/>
                                        </xf:itemset>
                                    </fr:dropdown-select1>
                                </fr:c>
                            <fr:c y="1" x="5" w="4">
                                    <fr:number xmlns="http://orbeon.org/oxf/xml/form-builder"
                                           xmlns:xxbl="http://orbeon.org/oxf/xml/xbl"
                                           xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                                           id="quantity-control"
                                           bind="quantity-bind">
                                        <xf:label ref="$form-resources/quantity/label"/>
                                        <xf:hint ref="$form-resources/quantity/hint"/>
                                        <xf:alert ref="$fr-resources/detail/labels/alert"/>
                                    </fr:number>
                                </fr:c>
                            <fr:c y="1" x="9" w="4">
                                    <fr:currency xmlns="http://orbeon.org/oxf/xml/form-builder"
                                             xmlns:xxbl="http://orbeon.org/oxf/xml/xbl"
                                             id="currency-control"
                                             bind="currency-bind">
                                        <xf:label ref="$form-resources/currency/label"/>
                                        <xf:hint ref="$form-resources/currency/hint"/>
                                        <xf:alert ref="$fr-resources/detail/labels/alert"/>
                                    </fr:currency>
                                </fr:c>
                        </fr:grid>
                    </fr:section>
                </fr:section>
                <fr:section id="section-14-control" bind="section-14-bind">
                    <xf:label ref="$form-resources/section-14/label"/>
                    <fr:grid id="grid-3-grid">
                        <fr:c y="1" x="1" w="6">
                                <xf:input id="date1-control" bind="date1-bind">
                                    <xf:label ref="$form-resources/date1/label"/>
                                    <xf:hint ref="$form-resources/date1/hint"/>
                                    <xf:alert ref="$fr-resources/detail/labels/alert"/>
                                </xf:input>
                            </fr:c>
                        <fr:c y="1" x="7" w="6">
                                <xf:input id="dateTime-control" bind="dateTime-bind">
                                    <xf:label ref="$form-resources/dateTime/label"/>
                                    <xf:hint ref="$form-resources/dateTime/hint"/>
                                    <xf:alert ref="$fr-resources/detail/labels/alert"/>
                                </xf:input>
                            </fr:c>
                        <fr:c y="2" x="1" w="6">
                                <fr:dropdown-date xmlns="http://orbeon.org/oxf/xml/form-builder"
                                              xmlns:xxbl="http://orbeon.org/oxf/xml/xbl"
                                              id="date2-control"
                                              bind="date2-bind">
                                    <xf:label ref="$form-resources/date2/label"/>
                                    <xf:hint ref="$form-resources/date2/hint"/>
                                    <xf:alert ref="$fr-resources/detail/labels/alert"/>
                                </fr:dropdown-date>
                            </fr:c>
                        <fr:c y="2" x="7" w="6">
                                <fr:fields-date xmlns="http://orbeon.org/oxf/xml/form-builder"
                                            xmlns:xxbl="http://orbeon.org/oxf/xml/xbl"
                                            id="date3-control"
                                            bind="date3-bind">
                                    <xf:label ref="$form-resources/date3/label"/>
                                    <xf:hint ref="$form-resources/date3/hint"/>
                                    <xf:alert ref="$fr-resources/detail/labels/alert"/>
                                </fr:fields-date>
                            </fr:c>
                        <fr:c y="3" x="1" w="6">
                                <xf:textarea id="details-control" bind="details-bind">
                                    <xf:label ref="$form-resources/details/label"/>
                                    <xf:hint ref="$form-resources/details/hint"/>
                                    <xf:alert ref="$fr-resources/detail/labels/alert"/>
                                </xf:textarea>
                            </fr:c>
                        <fr:c y="3" x="7" w="6">
                                <xf:select1 id="type-control" appearance="full" bind="type-bind">
                                    <xf:label ref="$form-resources/type/label"/>
                                    <xf:hint ref="$form-resources/type/hint"/>
                                    <xf:alert ref="$fr-resources/detail/labels/alert"/>
                                    <xf:itemset ref="$form-resources/type/item">
                                        <xf:label ref="label"/>
                                        <xf:value ref="value"/>
                                        <xf:hint ref="hint"/>
                                    </xf:itemset>
                                </xf:select1>
                            </fr:c>
                    </fr:grid>
                    <fr:grid id="grid-19-grid" repeat="content" bind="grid-19-bind"
                             template="instance(''grid-19-template'')"
                             min="1">
                        <fr:c y="1" x="1" w="6">
                                <xf:select id="options-control" appearance="full" bind="options-bind">
                                    <xf:label ref="$form-resources/options/label"/>
                                    <xf:hint ref="$form-resources/options/hint"/>
                                    <xf:alert ref="$fr-resources/detail/labels/alert"/>
                                    <xf:itemset ref="$form-resources/options/item">
                                        <xf:label ref="label"/>
                                        <xf:value ref="value"/>
                                        <xf:hint ref="hint"/>
                                    </xf:itemset>
                                </xf:select>
                            </fr:c>
                        <fr:c y="1" x="7" w="6">
                                <xf:select1 id="otherOptions-control" appearance="compact" bind="otherOptions-bind">
                                    <xf:label ref="$form-resources/otherOptions/label"/>
                                    <xf:hint ref="$form-resources/otherOptions/hint"/>
                                    <xf:alert ref="$fr-resources/detail/labels/alert"/>
                                    <xf:itemset ref="$form-resources/otherOptions/item">
                                        <xf:label ref="label"/>
                                        <xf:value ref="value"/>
                                    </xf:itemset>
                                </xf:select1>
                            </fr:c>
                    </fr:grid>
                    <fr:section id="section-24-control" bind="section-24-bind">
                        <xf:label ref="$form-resources/section-24/label"/>
                        <fr:grid id="grid-4-grid">
                            <fr:c y="1" x="1" w="12">
                                    <fr:tinymce xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                                            xmlns:xxbl="http://orbeon.org/oxf/xml/xbl"
                                            xmlns:f="http://orbeon.org/oxf/xml/formatting"
                                            id="formatedText-control"
                                            bind="formatedText-bind">
                                        <xf:label ref="$form-resources/formatedText/label"/>
                                        <xf:hint ref="$form-resources/formatedText/hint"/>
                                        <xf:alert ref="$fr-resources/detail/labels/alert"/>
                                    </fr:tinymce>
                                </fr:c>
                            <fr:c y="2" x="1" w="12">
                                    <fr:attachment xmlns="http://orbeon.org/oxf/xml/form-builder"
                                               xmlns:xxbl="http://orbeon.org/oxf/xml/xbl"
                                               id="fileAttachment-control"
                                               bind="fileAttachment-bind"
                                               class="fr-attachment">
                                        <xf:label ref="$form-resources/fileAttachment/label"/>
                                        <xf:hint ref="$form-resources/fileAttachment/hint"/>
                                        <xf:alert ref="$fr-resources/detail/labels/alert"/>
                                        <xf:filename ref="@filename"/>
                                        <xf:mediatype ref="@mediatype"/>
                                        <xxf:size ref="@size"/>
                                    </fr:attachment>
                                </fr:c>
                            <fr:c y="3" x="1" w="12">
                                    <fr:image-attachment xmlns="http://orbeon.org/oxf/xml/form-builder"
                                                     xmlns:xxbl="http://orbeon.org/oxf/xml/xbl"
                                                     id="imageAttachment-control"
                                                     bind="imageAttachment-bind"
                                                     class="fr-attachment">
                                        <xf:label ref="$form-resources/imageAttachment/label"/>
                                        <xf:hint ref="$form-resources/imageAttachment/hint"/>
                                        <xf:alert ref="$fr-resources/detail/labels/alert"/>
                                        <xf:filename ref="@filename"/>
                                        <xf:mediatype ref="@mediatype"/>
                                        <xxf:size ref="@size"/>
                                    </fr:image-attachment>
                                </fr:c>
                            <fr:c y="4" x="1" w="12">
                                    <fr:wpaint xmlns:xxbl="http://orbeon.org/oxf/xml/xbl" id="imageAnnotation-control"
                                           bind="imageAnnotation-bind">
                                        <xf:label ref="$form-resources/imageAnnotation/label"/>
                                        <xf:hint ref="$form-resources/imageAnnotation/hint"/>
                                        <xf:alert ref="$fr-resources/detail/labels/alert"/>
                                    </fr:wpaint>
                                </fr:c>
                            <fr:c y="5" x="1" w="12">
                                    <fr:autocomplete xmlns:xxbl="http://orbeon.org/oxf/xml/xbl"
                                                 xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                                                 id="autocomplete-control"
                                                 appearance="minimal"
                                                 labelref="@label"
                                                 resource=""
                                                 bind="autocomplete-bind">
                                        <xf:label ref="$form-resources/autocomplete/label"/>
                                        <xf:hint ref="$form-resources/autocomplete/hint"/>
                                        <xf:alert ref="$fr-resources/detail/labels/alert"/>
                                        <!-- Itemset points to an empty nodeset until users set them in the control details dialog -->
                        <xf:itemset ref="()">
                                            <xf:label ref="()"/>
                                            <xf:value ref="()"/>
                                        </xf:itemset>
                                    </fr:autocomplete>
                                </fr:c>
                        </fr:grid>
                    </fr:section>
                </fr:section>
            </fr:body>
        </fr:view>
   </xh:body>
</xh:html>'