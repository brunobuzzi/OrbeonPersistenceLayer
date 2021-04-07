migration
formDefinition_migration_all_fields_types

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
        <xh:title>Migration Form with all Field Types</xh:title>
        <xf:model id="fr-form-model" xxf:expose-xpath-types="true" xxf:analysis.calculate="true">
            <xf:instance id="fr-form-instance" xxf:exclude-result-prefixes="#all" xxf:index="id">
                <form>
                    <section-1>
                        <grid-1>
                            <name/>
                            <surname/>
                            <details/>
                            <observation/>
                        </grid-1>
                        <grid-2>
                            <password/>
                            <creationDate/>
                        </grid-2>
                        <grid-3>
                            <creationTime/>
                            <timeStamp/>
                        </grid-3>
                        <grid-4>
                            <endDate/>
                            <extensionDate/>
                        </grid-4>
                        <grid-5>
                            <invoiceTotal/>
                            <cost/>
                        </grid-5>
                        <grid-6>
                            <netIncome/>
                            <mail/>
                        </grid-6>
                        <grid-7>
                            <control-1/>
                            <state/>
                        </grid-7>
                        <grid-8>
                            <transactionType/>
                            <moneyOrigin/>
                        </grid-8>
                        <grid-9>
                            <checked/>
                            <image1 filename="document-32.png" mediatype="image/png" size="632">/fr/service/persistence/crud/orbeon/builder/data/8dd1e85d8fe2168cbcdc260e902cf442ac541f85/1d7b2864a55661c99f577e0506c55d3c6f0a915d.bin</image1>
                            <image2 filename="File-Adobe-Illustrator-SVG-01-24.png" mediatype="image/png"
                                    size="1252">/fr/service/persistence/crud/orbeon/builder/data/8dd1e85d8fe2168cbcdc260e902cf442ac541f85/3a5b75e6be2360d278b516cc91954bbe95d6be3c.bin</image2>
                            <image3 filename="2018-04-30-PHOTO-00000517.jpg" mediatype="image/jpeg">/fr/service/persistence/crud/orbeon/builder/data/8dd1e85d8fe2168cbcdc260e902cf442ac541f85/3fd2db0028d3a793dc020fab2203f610b6924d8c.bin</image3>
                            <signature/>
                            <control-5>
                                <image filename="actions-view-list-details-24.png" mediatype="image/png" size="632">/fr/service/persistence/crud/orbeon/builder/data/8dd1e85d8fe2168cbcdc260e902cf442ac541f85/4de14834755ca5d91838a4f06072f5dd4f33551f.bin</image>
                                <annotation>/fr/service/persistence/crud/orbeon/builder/data/8dd1e85d8fe2168cbcdc260e902cf442ac541f85/48714c83d54676cbe8861db428d002b3c59a7a2d.bin</annotation>
                            </control-5>
                        </grid-9>
                        <grid-10>
                            <hidden/>
                            <otherExplanation/>
                        </grid-10>
                        <grid-11>
                            <otherAttachment filename="Atop Application(3).xml" mediatype="text/xml" size="2369">/fr/service/persistence/crud/orbeon/builder/data/8dd1e85d8fe2168cbcdc260e902cf442ac541f85/1f47717cf4f04a73b3d58520f9f30a2fabbbb0bb.bin</otherAttachment>
                        </grid-11>
                    </section-1>
                </form>
            </xf:instance>
            <xf:bind id="fr-form-binds" ref="instance(''fr-form-instance'')">
                <xf:bind id="section-1-bind" name="section-1" ref="section-1">
                    <xf:bind id="grid-1-bind" ref="grid-1" name="grid-1">
                        <xf:bind id="name-bind" name="name" ref="name" xxf:whitespace="trim" required="true()"/>
                        <xf:bind id="surname-bind" ref="surname" name="surname" xxf:whitespace="trim"
                                 required="true()"/>
                        <xf:bind id="details-bind" ref="details" name="details"/>
                        <xf:bind id="observation-bind" ref="observation" name="observation"/>
                    </xf:bind>
                    <xf:bind id="grid-2-bind" ref="grid-2" name="grid-2">
                        <xf:bind id="password-bind" ref="password" name="password"/>
                        <xf:bind id="creationDate-bind" ref="creationDate" name="creationDate" type="xf:date"
                                 xxf:default="now()"/>
                    </xf:bind>
                    <xf:bind id="grid-3-bind" ref="grid-3" name="grid-3">
                        <xf:bind id="creationTime-bind" ref="creationTime" name="creationTime" type="xf:time"
                                 xxf:default="current-time()"/>
                        <xf:bind id="timeStamp-bind" ref="timeStamp" name="timeStamp" type="xf:dateTime"
                                 xxf:default="current-dateTime()"/>
                    </xf:bind>
                    <xf:bind id="grid-4-bind" ref="grid-4" name="grid-4">
                        <xf:bind id="endDate-bind" ref="endDate" name="endDate" type="xf:date"
                                 xxf:default="now()"/>
                        <xf:bind id="extensionDate-bind" ref="extensionDate" name="extensionDate" type="xf:date"
                                 xxf:default="now()"/>
                    </xf:bind>
                    <xf:bind id="grid-5-bind" ref="grid-5" name="grid-5">
                        <xf:bind id="invoiceTotal-bind" ref="invoiceTotal" name="invoiceTotal" type="xs:decimal"
                                 required="true()"/>
                        <xf:bind id="cost-bind" ref="cost" name="cost" type="xs:integer" required="true()"/>
                    </xf:bind>
                    <xf:bind id="grid-6-bind" ref="grid-6" name="grid-6">
                        <xf:bind id="netIncome-bind" ref="netIncome" name="netIncome" type="xf:decimal"
                                 constraint="xxf:fraction-digits(2)"/>
                        <xf:bind id="mail-bind" ref="mail" name="mail" type="xf:email" xxf:whitespace="trim"
                                 required="true()"/>
                    </xf:bind>
                    <xf:bind id="grid-7-bind" ref="grid-7" name="grid-7">
                        <xf:bind id="control-1-bind" ref="control-1" name="control-1"/>
                        <xf:bind id="state-bind" ref="state" name="state" required="true()"/>
                    </xf:bind>
                    <xf:bind id="grid-8-bind" ref="grid-8" name="grid-8">
                        <xf:bind id="transactionType-bind" ref="transactionType" name="transactionType"
                                 required="true()"/>
                        <xf:bind id="moneyOrigin-bind" ref="moneyOrigin" name="moneyOrigin"/>
                    </xf:bind>
                    <xf:bind id="grid-9-bind" ref="grid-9" name="grid-9">
                        <xf:bind id="checked-bind" ref="checked" name="checked" type="xf:boolean"/>
                        <xf:bind id="image1-bind" ref="image1" name="image1" type="xf:anyURI"/>
                        <xf:bind id="image2-bind" ref="image2" name="image2" type="xf:anyURI"
                                 constraint="xxf:upload-mediatypes(''image/*'')"/>
                        <xf:bind id="image3-bind" ref="image3" name="image3" type="xf:anyURI"/>
                        <xf:bind id="signature-bind" ref="signature" name="signature" type="xf:anyURI"/>
                        <xf:bind id="control-5-bind" ref="control-5" name="control-5"/>
                    </xf:bind>
                    <xf:bind id="grid-10-bind" ref="grid-10" name="grid-10">
                        <xf:bind id="hidden-bind" ref="hidden" name="hidden"/>
                        <xf:bind id="otherExplanation-bind" ref="otherExplanation" name="otherExplanation"/>
                    </xf:bind>
                    <xf:bind id="grid-11-bind" ref="grid-11" name="grid-11">
                        <xf:bind id="otherAttachment-bind" ref="otherAttachment" name="otherAttachment"
                                 type="xf:anyURI"/>
                    </xf:bind>
                </xf:bind>
            </xf:bind>
            <xf:instance id="fr-form-metadata" xxf:readonly="true" xxf:exclude-result-prefixes="#all">
                <metadata>
                    <application-name>migration</application-name>
                    <form-name>all-fields-types</form-name>
                    <title xml:lang="en">Migration Form with all Field Types</title>
                    <description xml:lang="en"/>
                    <created-with-version>2019.2.1.202002282212 PE</created-with-version>
                    <updated-with-version>2019.2.1.202002282212 PE</updated-with-version>
                    <updated-with-version>2020.1.1.202102012142 PE</updated-with-version>
                    <available>false</available>
                    <library-versions>
                        <orbeon>1</orbeon>
                    </library-versions>
                </metadata>
            </xf:instance>
            <xf:instance id="fr-form-attachments" xxf:exclude-result-prefixes="#all">
                <attachments>
                    <pdf mediatype="application/pdf" filename="DeclaracionDGI_3767359_2018.pdf"
                         size="3333"
                         name="Doc"
                         lang="en">/fr/service/persistence/crud/orbeon/builder/data/8dd1e85d8fe2168cbcdc260e902cf442ac541f85/9428f017fea4876d39f15cea48ea78b5e2bb822b.bin</pdf>
                </attachments>
            </xf:instance>
            <xf:instance xxf:readonly="true" id="fr-form-resources" xxf:exclude-result-prefixes="#all">
                <resources>
                    <resource xml:lang="en">
                        <otherAttachment>
                            <label/>
                            <hint/>
                        </otherAttachment>
                        <hidden>
                            <label/>
                            <hint/>
                        </hidden>
                        <otherExplanation>
                            <text xmlns:xxbl="http://orbeon.org/oxf/xml/xbl" xmlns:xbl="http://www.w3.org/ns/xbl"
                                  xmlns:p="http://www.orbeon.com/oxf/pipeline"/>
                        </otherExplanation>
                        <checked>
                            <label>Checked</label>
                            <hint/>
                        </checked>
                        <image1>
                            <label/>
                            <hint/>
                        </image1>
                        <image2>
                            <label/>
                            <hint/>
                        </image2>
                        <image3>
                            <label/>
                        </image3>
                        <signature>
                            <label>Signature</label>
                            <hint/>
                        </signature>
                        <control-5>
                            <label/>
                            <hint/>
                        </control-5>
                        <transactionType>
                            <label>Transaction Type</label>
                            <hint/>
                            <item>
                                <label>International</label>
                                <hint/>
                                <value>international</value>
                            </item>
                            <item>
                                <label>Local</label>
                                <hint/>
                                <value>local</value>
                            </item>
                        </transactionType>
                        <moneyOrigin>
                            <label>Money Origin</label>
                            <hint/>
                            <item>
                                <label>Stock Exchange</label>
                                <value>stock-exchange</value>
                            </item>
                            <item>
                                <label>Investment</label>
                                <value>investment</value>
                            </item>
                            <item>
                                <label>Revenue</label>
                                <value>revenue</value>
                            </item>
                            <item>
                                <label>Unknow</label>
                                <value>unknow</value>
                            </item>
                        </moneyOrigin>
                        <control-1>
                            <label>Country</label>
                            <hint/>
                            <item>
                                <label>USA</label>
                                <value>usa</value>
                            </item>
                            <item>
                                <label>Russia</label>
                                <value>russia</value>
                            </item>
                            <item>
                                <label>China</label>
                                <value>china</value>
                            </item>
                            <item>
                                <label>Germany</label>
                                <value>germany</value>
                            </item>
                        </control-1>
                        <state>
                            <label>State</label>
                            <hint/>
                            <item>
                                <label>Done</label>
                                <hint/>
                                <value>done</value>
                            </item>
                            <item>
                                <label>Pending</label>
                                <hint/>
                                <value>pending</value>
                            </item>
                            <item>
                                <label>Invalid</label>
                                <hint/>
                                <value>invalid</value>
                            </item>
                        </state>
                        <netIncome>
                            <label>Net Income</label>
                            <hint/>
                        </netIncome>
                        <mail>
                            <label>Mail</label>
                            <hint/>
                        </mail>
                        <invoiceTotal>
                            <label>Invoice Total</label>
                            <hint/>
                        </invoiceTotal>
                        <cost>
                            <label>Cost</label>
                            <hint/>
                        </cost>
                        <endDate>
                            <label>End Date</label>
                            <hint/>
                        </endDate>
                        <extensionDate>
                            <label>Extension Date</label>
                            <hint/>
                        </extensionDate>
                        <creationTime>
                            <label>Creation Time</label>
                            <hint/>
                        </creationTime>
                        <timeStamp>
                            <label>Creation Time Stamp</label>
                            <hint/>
                        </timeStamp>
                        <password>
                            <label>Password</label>
                            <hint/>
                        </password>
                        <creationDate>
                            <label>Creation Date</label>
                            <hint/>
                        </creationDate>
                        <section-1>
                            <label>Regular Fields</label>
                        </section-1>
                        <name>
                            <label>Name</label>
                            <hint/>
                        </name>
                        <surname>
                            <label>Surname</label>
                            <hint/>
                        </surname>
                        <details>
                            <label>Details</label>
                            <hint/>
                        </details>
                        <observation>
                            <label>Observation</label>
                            <hint/>
                        </observation>
                    </resource>
                </resources>
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
                        <fr:c y="1" x="1" w="6">
                                <xf:input id="name-control" bind="name-bind" class="fr-search fr-summary">
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
                        <fr:c x="1" y="2" w="6">
                            <xf:textarea id="details-control" bind="details-bind">
                                <xf:label ref="$form-resources/details/label"/>
                                <xf:hint ref="$form-resources/details/hint"/>
                                <xf:alert ref="$fr-resources/detail/labels/alert"/>
                            </xf:textarea>
                        </fr:c>
                        <fr:c x="7" y="2" w="6">
                            <fr:tinymce xmlns:xxbl="http://orbeon.org/oxf/xml/xbl"
                                        xmlns:f="http://orbeon.org/oxf/xml/formatting"
                                        id="observation-control"
                                        bind="observation-bind">
                                <xf:label ref="$form-resources/observation/label"/>
                                <xf:hint ref="$form-resources/observation/hint"/>
                                <xf:alert ref="$fr-resources/detail/labels/alert"/>
                            </fr:tinymce>
                        </fr:c>
                    </fr:grid>
                    <fr:grid id="grid-2-grid" bind="grid-2-bind">
                        <fr:c x="1" y="1" w="6">
                            <xf:secret id="password-control" bind="password-bind">
                                <xf:label ref="$form-resources/password/label"/>
                                <xf:hint ref="$form-resources/password/hint"/>
                                <xf:alert ref="$fr-resources/detail/labels/alert"/>
                            </xf:secret>
                        </fr:c>
                        <fr:c x="7" y="1" w="6">
                            <fr:date xmlns:xxbl="http://orbeon.org/oxf/xml/xbl"
                                     xmlns:DateSupport="java:org.orbeon.xbl.DateSupportJava"
                                     id="creationDate-control"
                                     bind="creationDate-bind">
                                <xf:label ref="$form-resources/creationDate/label"/>
                                <xf:hint ref="$form-resources/creationDate/hint"/>
                                <xf:alert ref="$fr-resources/detail/labels/alert"/>
                            </fr:date>
                        </fr:c>
                    </fr:grid>
                    <fr:grid id="grid-3-grid" bind="grid-3-bind">
                        <fr:c x="1" y="1" w="6">
                            <fr:time xmlns:xxbl="http://orbeon.org/oxf/xml/xbl" id="creationTime-control"
                                     bind="creationTime-bind">
                                <xf:label ref="$form-resources/creationTime/label"/>
                                <xf:hint ref="$form-resources/creationTime/hint"/>
                                <xf:alert ref="$fr-resources/detail/labels/alert"/>
                            </fr:time>
                        </fr:c>
                        <fr:c x="7" y="1" w="6">
                            <fr:datetime xmlns:xxbl="http://orbeon.org/oxf/xml/xbl" id="timeStamp-control"
                                         bind="timeStamp-bind">
                                <xf:label ref="$form-resources/timeStamp/label"/>
                                <xf:hint ref="$form-resources/timeStamp/hint"/>
                                <xf:alert ref="$fr-resources/detail/labels/alert"/>
                            </fr:datetime>
                        </fr:c>
                    </fr:grid>
                    <fr:grid id="grid-4-grid" bind="grid-4-bind">
                        <fr:c x="1" y="1" w="6">
                            <fr:dropdown-date xmlns="http://orbeon.org/oxf/xml/form-builder"
                                              xmlns:xxbl="http://orbeon.org/oxf/xml/xbl"
                                              id="endDate-control"
                                              bind="endDate-bind">
                                <xf:label ref="$form-resources/endDate/label"/>
                                <xf:hint ref="$form-resources/endDate/hint"/>
                                <xf:alert ref="$fr-resources/detail/labels/alert"/>
                            </fr:dropdown-date>
                        </fr:c>
                        <fr:c x="7" y="1" w="6">
                            <fr:fields-date xmlns="http://orbeon.org/oxf/xml/form-builder"
                                            xmlns:xxbl="http://orbeon.org/oxf/xml/xbl"
                                            id="extensionDate-control"
                                            bind="extensionDate-bind">
                                <xf:label ref="$form-resources/extensionDate/label"/>
                                <xf:hint ref="$form-resources/extensionDate/hint"/>
                                <xf:alert ref="$fr-resources/detail/labels/alert"/>
                            </fr:fields-date>
                        </fr:c>
                    </fr:grid>
                    <fr:grid id="grid-5-grid" bind="grid-5-bind">
                        <fr:c x="1" y="1" w="6">
                            <fr:number xmlns="http://orbeon.org/oxf/xml/form-builder"
                                       xmlns:xxbl="http://orbeon.org/oxf/xml/xbl"
                                       xmlns:NumberSupport="java:org.orbeon.xbl.NumberSupportJava"
                                       id="invoiceTotal-control"
                                       bind="invoiceTotal-bind"
                                       class="fr-summary fr-search">
                                <xf:label ref="$form-resources/invoiceTotal/label"/>
                                <xf:hint ref="$form-resources/invoiceTotal/hint"/>
                                <xf:alert ref="$fr-resources/detail/labels/alert"/>
                            </fr:number>
                        </fr:c>
                        <fr:c x="7" y="1" w="6">
                            <fr:number xmlns="http://orbeon.org/oxf/xml/form-builder"
                                       xmlns:xxbl="http://orbeon.org/oxf/xml/xbl"
                                       xmlns:NumberSupport="java:org.orbeon.xbl.NumberSupportJava"
                                       id="cost-control"
                                       bind="cost-bind">
                                <xf:label ref="$form-resources/cost/label"/>
                                <xf:hint ref="$form-resources/cost/hint"/>
                                <xf:alert ref="$fr-resources/detail/labels/alert"/>
                            </fr:number>
                        </fr:c>
                    </fr:grid>
                    <fr:grid id="grid-6-grid" bind="grid-6-bind">
                        <fr:c x="1" y="1" w="6">
                            <fr:currency xmlns="http://orbeon.org/oxf/xml/form-builder"
                                         xmlns:xxbl="http://orbeon.org/oxf/xml/xbl"
                                         xmlns:NumberSupport="java:org.orbeon.xbl.NumberSupportJava"
                                         id="netIncome-control"
                                         bind="netIncome-bind">
                                <xf:label ref="$form-resources/netIncome/label"/>
                                <xf:hint ref="$form-resources/netIncome/hint"/>
                                <xf:alert ref="$fr-resources/detail/labels/alert"/>
                            </fr:currency>
                        </fr:c>
                        <fr:c x="7" y="1" w="6">
                            <xf:input id="mail-control" bind="mail-bind" class="fr-summary fr-search">
                                <xf:label ref="$form-resources/mail/label"/>
                                <xf:hint ref="$form-resources/mail/hint"/>
                                <xf:alert ref="$fr-resources/detail/labels/alert"/>
                            </xf:input>
                        </fr:c>
                    </fr:grid>
                    <fr:grid id="grid-7-grid" bind="grid-7-bind">
                        <fr:c x="1" y="1" w="6">
                            <fr:dropdown-select1 xmlns:xxbl="http://orbeon.org/oxf/xml/xbl" id="control-1-control"
                                                 bind="control-1-bind">
                                <xf:label ref="$form-resources/control-1/label"/>
                                <xf:hint ref="$form-resources/control-1/hint"/>
                                <xf:alert ref="$fr-resources/detail/labels/alert"/>
                                <xf:itemset ref="$form-resources/control-1/item">
                                    <xf:label ref="label"/>
                                    <xf:value ref="value"/>
                                </xf:itemset>
                            </fr:dropdown-select1>
                        </fr:c>
                        <fr:c x="7" y="1" w="6">
                            <xf:select1 id="state-control" appearance="full" bind="state-bind"
                                        class="fr-summary fr-search">
                                <xf:label ref="$form-resources/state/label"/>
                                <xf:hint ref="$form-resources/state/hint"/>
                                <xf:alert ref="$fr-resources/detail/labels/alert"/>
                                <xf:itemset ref="$form-resources/state/item">
                                    <xf:label ref="label"/>
                                    <xf:value ref="value"/>
                                    <xf:hint ref="hint"/>
                                </xf:itemset>
                            </xf:select1>
                        </fr:c>
                    </fr:grid>
                    <fr:grid id="grid-8-grid" bind="grid-8-bind">
                        <fr:c x="1" y="1" w="6">
                            <xf:select id="transactionType-control" appearance="full" bind="transactionType-bind">
                                <xf:label ref="$form-resources/transactionType/label"/>
                                <xf:hint ref="$form-resources/transactionType/hint"/>
                                <xf:alert ref="$fr-resources/detail/labels/alert"/>
                                <xf:itemset ref="$form-resources/transactionType/item">
                                    <xf:label ref="label"/>
                                    <xf:value ref="value"/>
                                    <xf:hint ref="hint"/>
                                </xf:itemset>
                            </xf:select>
                        </fr:c>
                        <fr:c x="7" y="1" w="6">
                            <xf:select id="moneyOrigin-control" bind="moneyOrigin-bind" appearance="scroll">
                                <xf:label ref="$form-resources/moneyOrigin/label"/>
                                <xf:hint ref="$form-resources/moneyOrigin/hint"/>
                                <xf:alert ref="$fr-resources/detail/labels/alert"/>
                                <xf:itemset ref="$form-resources/moneyOrigin/item">
                                    <xf:label ref="label"/>
                                    <xf:value ref="value"/>
                                </xf:itemset>
                            </xf:select>
                        </fr:c>
                    </fr:grid>
                    <fr:grid id="grid-9-grid" bind="grid-9-bind">
                        <fr:c x="1" y="1" w="6">
                            <fr:yesno-input xmlns="http://orbeon.org/oxf/xml/form-builder"
                                            xmlns:xxbl="http://orbeon.org/oxf/xml/xbl"
                                            id="checked-control"
                                            bind="checked-bind">
                                <xf:label ref="$form-resources/checked/label"/>
                                <xf:hint ref="$form-resources/checked/hint"/>
                                <xf:alert ref="$fr-resources/detail/labels/alert"/>
                            </fr:yesno-input>
                        </fr:c>
                        <fr:c x="7" y="1" w="6">
                            <fr:attachment xmlns="http://orbeon.org/oxf/xml/form-builder"
                                           xmlns:xxbl="http://orbeon.org/oxf/xml/xbl"
                                           id="image1-control"
                                           bind="image1-bind"
                                           class="fr-attachment">
                                <xf:label ref="$form-resources/image1/label"/>
                                <xf:hint ref="$form-resources/image1/hint"/>
                                <xf:alert ref="$fr-resources/detail/labels/alert"/>
                            </fr:attachment>
                        </fr:c>
                        <fr:c x="1" y="2" w="6">
                            <fr:image-attachment xmlns="http://orbeon.org/oxf/xml/form-builder"
                                                 xmlns:xxbl="http://orbeon.org/oxf/xml/xbl"
                                                 id="image2-control"
                                                 bind="image2-bind"
                                                 class="fr-attachment">
                                <xf:label ref="$form-resources/image2/label"/>
                                <xf:hint ref="$form-resources/image2/hint"/>
                                <xf:alert ref="$fr-resources/detail/labels/alert"/>
                            </fr:image-attachment>
                        </fr:c>
                        <fr:c x="7" y="2" w="6">
                            <fr:image xmlns="http://orbeon.org/oxf/xml/form-builder"
                                      xmlns:xxbl="http://orbeon.org/oxf/xml/xbl"
                                      id="image3-control"
                                      bind="image3-bind"
                                      class="fr-static-attachment">
                                <xf:label ref="$form-resources/image3/label"/>
                                <xf:alert ref="$fr-resources/detail/labels/alert"/>
                            </fr:image>
                        </fr:c>
                        <fr:c x="1" y="3" w="6">
                            <fr:handwritten-signature xmlns="http://orbeon.org/oxf/xml/form-builder"
                                                      xmlns:xxbl="http://orbeon.org/oxf/xml/xbl"
                                                      id="signature-control"
                                                      bind="signature-bind">
                                <xf:label ref="$form-resources/signature/label"/>
                                <xf:hint ref="$form-resources/signature/hint"/>
                                <xf:alert ref="$fr-resources/detail/labels/alert"/>
                            </fr:handwritten-signature>
                        </fr:c>
                        <fr:c x="7" y="3" w="6">
                            <fr:wpaint xmlns:xxbl="http://orbeon.org/oxf/xml/xbl" id="control-5-control"
                                       bind="control-5-bind">
                                <xf:label ref="$form-resources/control-5/label"/>
                                <xf:hint ref="$form-resources/control-5/hint"/>
                                <xf:alert ref="$fr-resources/detail/labels/alert"/>
                            </fr:wpaint>
                        </fr:c>
                    </fr:grid>
                    <fr:grid id="grid-10-grid" bind="grid-10-bind">
                        <fr:c x="1" y="1" w="6">
                            <fr:hidden xmlns:xxbl="http://orbeon.org/oxf/xml/xbl" id="hidden-control" bind="hidden-bind">
                                <xf:label ref="$form-resources/hidden/label"/>
                                <xf:hint ref="$form-resources/hidden/hint"/>
                                <xf:alert ref="$fr-resources/detail/labels/alert"/>
                            </fr:hidden>
                        </fr:c>
                        <fr:c x="7" y="1" w="6">
                            <fr:explanation xmlns:xxbl="http://orbeon.org/oxf/xml/xbl" id="otherExplanation-control"
                                            bind="otherExplanation-bind">
                                <xf:alert ref="$fr-resources/detail/labels/alert"/>
                                <fr:text ref="$form-resources/otherExplanation/text" mediatype="text/html"/>
                            </fr:explanation>
                        </fr:c>
                    </fr:grid>
                    <fr:grid id="grid-11-grid" bind="grid-11-bind">
                        <fr:c x="1" y="1" w="6">
                            <fr:attachment xmlns="http://orbeon.org/oxf/xml/form-builder"
                                           xmlns:xxbl="http://orbeon.org/oxf/xml/xbl"
                                           id="otherAttachment-control"
                                           bind="otherAttachment-bind"
                                           class="fr-attachment">
                                <xf:label ref="$form-resources/otherAttachment/label"/>
                                <xf:hint ref="$form-resources/otherAttachment/hint"/>
                                <xf:alert ref="$fr-resources/detail/labels/alert"/>
                            </fr:attachment>
                        </fr:c>
                        <fr:c x="7" y="1" w="6"/>
                    </fr:grid>
                </fr:section>
            </fr:body>
        </fr:view>
    </xh:body>
</xh:html>'