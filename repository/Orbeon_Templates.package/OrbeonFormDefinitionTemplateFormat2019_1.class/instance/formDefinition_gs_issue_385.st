issue 385
formDefinition_gs_issue_385

	^'<?xml version="1.0" encoding="UTF-8"?>
<xh:html xmlns:array="http://www.w3.org/2005/xpath-functions/array" xmlns:ev="http://www.w3.org/2001/xml-events" xmlns:exf="http://www.exforms.org/exf/1-0" xmlns:fb="http://orbeon.org/oxf/xml/form-builder" xmlns:fr="http://orbeon.org/oxf/xml/form-runner" xmlns:map="http://www.w3.org/2005/xpath-functions/map" xmlns:saxon="http://saxon.sf.net/" xmlns:soap="http://schemas.xmlsoap.org/soap/envelope/" xmlns:sql="http://orbeon.org/oxf/xml/sql" xmlns:xf="http://www.w3.org/2002/xforms" xmlns:xh="http://www.w3.org/1999/xhtml" xmlns:xi="http://www.w3.org/2001/XInclude" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xxf="http://orbeon.org/oxf/xml/xforms" xmlns:xxi="http://orbeon.org/oxf/xml/xinclude" fr:data-format-version="2019.1.0">
	<xh:head>
		<xh:title>Issue 385</xh:title>
		<xf:model xxf:analysis.calculate="true" xxf:expose-xpath-types="true" id="fr-form-model">
			<xf:instance xxf:exclude-result-prefixes="#all" id="fr-form-instance" xxf:index="id">
				<form>
					<section-2>
						<grid-1>
							<name/>
							<surname/>
						</grid-1>
					</section-2>
				</form>
			</xf:instance>
			<xf:bind id="fr-form-binds" ref="instance(''fr-form-instance'')">
				<xf:bind id="section-2-bind" name="section-2" ref="section-2"/>
			</xf:bind>
			<xf:instance xxf:exclude-result-prefixes="#all" id="fr-form-metadata" xxf:readonly="true">
				<metadata>
					<application-name>gs</application-name>
					<form-name>issue-385</form-name>
					<title xml:lang="en">Issue 385</title>
					<description xml:lang="en"/>
					<created-with-version>2020.1.1.202102012142 PE</created-with-version>
					<library-versions/>
					<updated-with-version>2020.1.1.202102012142 PE</updated-with-version>
					<migration version="2019.1.0">{"migrations":[{"containerPath":[{"value":"section-2"}],"newGridElem":{"value":"grid-1"},"afterElem":null,"content":[{"value":"name"},{"value":"surname"}],"topLevel":false}]}</migration>
					<available>true</available>
				</metadata>
			</xf:instance>
			<xf:instance xxf:exclude-result-prefixes="#all" id="fr-form-attachments">
				<attachments/>
			</xf:instance>
			<xf:instance xxf:exclude-result-prefixes="#all" id="fr-form-resources" xxf:readonly="true">
				<resources>
					<resource xml:lang="en">
						<section-2>
							<label>Name</label>
							<help/>
						</section-2>
					</resource>
				</resources>
			</xf:instance>
		</xf:model>
		<xbl:xbl xmlns:component="http://orbeon.org/oxf/xml/form-builder/component/gs/library" xmlns:fbf="java:org.orbeon.oxf.fb.FormBuilderXPathApi" xmlns:frf="java:org.orbeon.oxf.fr.FormRunner" xmlns:p="http://www.orbeon.com/oxf/pipeline" xmlns:xbl="http://www.w3.org/ns/xbl" xmlns:xxbl="http://orbeon.org/oxf/xml/xbl">
			<xbl:binding class="fr-section-component" element="component|section-1" id="gs-section-1-component">
				<xbl:implementation>
					<xf:model id="section-1-model">
						<xf:instance id="fr-form-instance" xxf:index="id" xxbl:mirror="true">
							<empty/>
						</xf:instance>
						<xf:instance id="fr-form-template">
							<section-1>
								<grid-1>
									<name/>
									<surname/>
								</grid-1>
							</section-1>
						</xf:instance>
						<xf:bind id="fr-form-binds" ref="instance(''fr-form-instance'')">
							<xf:bind id="grid-1-bind" name="grid-1" ref="grid-1">
								<xf:bind id="name-bind" name="name" ref="name" xxf:whitespace="trim"/>
								<xf:bind id="surname-bind" name="surname" ref="surname" xxf:whitespace="trim"/>
							</xf:bind>
						</xf:bind>
						<xf:instance id="fr-form-resources" xxf:readonly="true">
							<resources>
								<resource xml:lang="en">
									<section-1>
										<label>Name</label>
									</section-1>
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
						<xf:instance id="readonly">
							<readonly/>
						</xf:instance>
						<xf:var name="fr-params" value="xxf:instance(''fr-parameters-instance'')"/>
						<xf:var name="fr-mode" value="$fr-params/mode"/>
						<xf:bind readonly="                             fr:is-readonly-mode()         or                             instance(''readonly'') = ''true'' or                             fr:is-design-time()" ref="instance(''fr-form-instance'')"/>
						<xf:action class="fr-design-time-preserve" event="xforms-model-construct-done">
							<xf:var name="is-empty" value="empty(instance()/*)"/>
							<xf:action if="$is-empty">
								<xf:insert context="instance()" origin="instance(''fr-form-template'')/*"/>
								<xf:rebuild/>
								<xf:recalculate xxf:defaults="true"/>
							</xf:action>
							<xf:action if="not($is-empty)">
								<xf:var xmlns:migration="java:org.orbeon.oxf.fr.SimpleDataMigration" name="simply-migrated" value="                                     migration:dataMaybeWithSimpleMigration(                                         event(''xxf:absolute-targetid''),                                         instance(''fr-form-template''),                                         instance()                                     )"/>
								<xf:action if="exists($simply-migrated)">
									<xf:delete ref="instance()/*"/>
									<xf:insert context="instance()" origin="$simply-migrated/*"/>
									<xf:rebuild/>
									<xf:recalculate xxf:defaults="true"/>
								</xf:action>
							</xf:action>
						</xf:action>
						<xf:action event="xforms-model-construct-done">
							<xf:insert xmlns:migration="java:org.orbeon.oxf.fr.SimpleDataMigration" context="." iterate="migration:iterateBinds(event(''xxf:absolute-targetid''), instance())" origin="xf:attribute(''fr:relevant'', ''false'')"/>
						</xf:action>
						<xf:insert context="event(''xxf:binding'')" event="xforms-disabled" if="event(''xxf:binding'')/root()/* is instance(''fr-form-instance'')" observer="fr-section-template-view" origin="xf:attribute(''fr:relevant'', ''false'')" xxf:phantom="true"/>
						<xf:delete event="xforms-enabled" if="event(''xxf:binding'')/root() is instance(''fr-form-instance'')/root()" observer="fr-section-template-view" ref="event(''xxf:binding'')/@fr:relevant" xxf:phantom="true"/>
					</xf:model>
				</xbl:implementation>
				<xbl:template>
					<xf:group appearance="xxf:internal" id="fr-section-template-view" model="section-1-model">
						<xf:var id="context" name="context" value="xxf:binding-context(''gs-section-1-component'')"/>
						<xf:var as="xs:boolean" name="readonly" value="exf:readonly($context)">
							<xf:setvalue class="fr-design-time-preserve" event="xforms-enabled xforms-value-changed" ref="instance(''readonly'')" value="exf:readonly($context)"/>
						</xf:var>
						<xf:var as="element()?" name="fr-resources">
							<xxf:value xxbl:scope="outer" value="$fr-resources"/>
						</xf:var>
						<xf:var as="element(resource)" name="form-resources" value="instance(''fr-form-resources'')/(resource[@xml:lang = xxf:instance(''fr-language-instance'')], resource[1])[1]"/>
						<xf:label xmlns:oxf="http://www.orbeon.com/oxf/processors" ref="$form-resources/section-1/label"/>
						<fr:grid xmlns:oxf="http://www.orbeon.com/oxf/processors" bind="grid-1-bind" id="grid-1-grid">
							<fr:c w="6" x="1" y="1">
								<xf:input bind="name-bind" class="fr-summary fr-search" id="name-control">
									<xf:label ref="$form-resources/name/label"/>
									<xf:hint ref="$form-resources/name/hint"/>
									<xf:alert ref="$fr-resources/detail/labels/alert"/>
								</xf:input>
							</fr:c>
							<fr:c h="1" w="6" x="7" y="1">
								<xf:input bind="surname-bind" class="fr-summary fr-search" id="surname-control">
									<xf:label ref="$form-resources/surname/label"/>
									<xf:hint ref="$form-resources/surname/hint"/>
									<xf:alert ref="$fr-resources/detail/labels/alert"/>
								</xf:input>
							</fr:c>
						</fr:grid>
					</xf:group>
				</xbl:template>
			</xbl:binding>
			<xbl:binding class="fr-section-component" element="component|section-2" id="gs-section-2-component">
				<xbl:implementation>
					<xf:model id="section-2-model">
						<xf:instance id="fr-form-instance" xxf:index="id" xxbl:mirror="true">
							<empty/>
						</xf:instance>
						<xf:instance id="fr-form-template">
							<section-2>
								<section-2-iteration>
									<grid-2>
										<number/>
									</grid-2>
								</section-2-iteration>
							</section-2>
						</xf:instance>
						<xf:bind id="fr-form-binds" ref="instance(''fr-form-instance'')">
							<xf:bind id="section-2-iteration-bind" name="section-2-iteration" ref="section-2-iteration">
								<xf:bind id="grid-2-bind" name="grid-2" ref="grid-2">
									<xf:bind id="number-bind" name="number" ref="number" type="xf:decimal"/>
								</xf:bind>
							</xf:bind>
						</xf:bind>
						<xf:instance id="fr-form-resources" xxf:readonly="true">
							<resources>
								<resource xml:lang="en">
									<section-2>
										<label>Number</label>
									</section-2>
									<number>
										<label>Number</label>
										<hint/>
									</number>
								</resource>
							</resources>
						</xf:instance>
						<xf:instance id="readonly">
							<readonly/>
						</xf:instance>
						<xf:var name="fr-params" value="xxf:instance(''fr-parameters-instance'')"/>
						<xf:var name="fr-mode" value="$fr-params/mode"/>
						<xf:bind readonly="                             fr:is-readonly-mode()         or                             instance(''readonly'') = ''true'' or                             fr:is-design-time()" ref="instance(''fr-form-instance'')"/>
						<xf:action class="fr-design-time-preserve" event="xforms-model-construct-done">
							<xf:var name="is-empty" value="empty(instance()/*)"/>
							<xf:action if="$is-empty">
								<xf:insert context="instance()" origin="instance(''fr-form-template'')/*"/>
								<xf:rebuild/>
								<xf:recalculate xxf:defaults="true"/>
							</xf:action>
							<xf:action if="not($is-empty)">
								<xf:var xmlns:migration="java:org.orbeon.oxf.fr.SimpleDataMigration" name="simply-migrated" value="                                     migration:dataMaybeWithSimpleMigration(                                         event(''xxf:absolute-targetid''),                                         instance(''fr-form-template''),                                         instance()                                     )"/>
								<xf:action if="exists($simply-migrated)">
									<xf:delete ref="instance()/*"/>
									<xf:insert context="instance()" origin="$simply-migrated/*"/>
									<xf:rebuild/>
									<xf:recalculate xxf:defaults="true"/>
								</xf:action>
							</xf:action>
						</xf:action>
						<xf:action event="xforms-model-construct-done">
							<xf:insert xmlns:migration="java:org.orbeon.oxf.fr.SimpleDataMigration" context="." iterate="migration:iterateBinds(event(''xxf:absolute-targetid''), instance())" origin="xf:attribute(''fr:relevant'', ''false'')"/>
						</xf:action>
						<xf:insert context="event(''xxf:binding'')" event="xforms-disabled" if="event(''xxf:binding'')/root()/* is instance(''fr-form-instance'')" observer="fr-section-template-view" origin="xf:attribute(''fr:relevant'', ''false'')" xxf:phantom="true"/>
						<xf:delete event="xforms-enabled" if="event(''xxf:binding'')/root() is instance(''fr-form-instance'')/root()" observer="fr-section-template-view" ref="event(''xxf:binding'')/@fr:relevant" xxf:phantom="true"/>
					</xf:model>
				</xbl:implementation>
				<xbl:template>
					<xf:group appearance="xxf:internal" id="fr-section-template-view" model="section-2-model">
						<xf:var id="context" name="context" value="xxf:binding-context(''gs-section-2-component'')"/>
						<xf:var as="xs:boolean" name="readonly" value="exf:readonly($context)">
							<xf:setvalue class="fr-design-time-preserve" event="xforms-enabled xforms-value-changed" ref="instance(''readonly'')" value="exf:readonly($context)"/>
						</xf:var>
						<xf:var as="element()?" name="fr-resources">
							<xxf:value xxbl:scope="outer" value="$fr-resources"/>
						</xf:var>
						<xf:var as="element(resource)" name="form-resources" value="instance(''fr-form-resources'')/(resource[@xml:lang = xxf:instance(''fr-language-instance'')], resource[1])[1]"/>
						<xf:label xmlns:oxf="http://www.orbeon.com/oxf/processors" ref="$form-resources/section-2/label"/>
						<fr:grid xmlns:oxf="http://www.orbeon.com/oxf/processors" bind="grid-2-bind" id="grid-2-grid">
							<fr:c w="12" x="1" y="1">
								<fr:number xmlns:NumberSupport="java:org.orbeon.xbl.NumberSupportJava" bind="number-bind" class="fr-summary fr-search" id="number-control" xmlns="http://orbeon.org/oxf/xml/form-builder">
									<xf:label ref="$form-resources/number/label"/>
									<xf:hint ref="$form-resources/number/hint"/>
									<xf:alert ref="$fr-resources/detail/labels/alert"/>
								</fr:number>
							</fr:c>
						</fr:grid>
					</xf:group>
				</xbl:template>
			</xbl:binding>
			<xbl:binding class="fr-section-component" element="component|section-3" id="gs-section-3-component">
				<xbl:implementation>
					<xf:model id="section-3-model">
						<xf:instance id="fr-form-instance" xxf:index="id" xxbl:mirror="true">
							<empty/>
						</xf:instance>
						<xf:instance id="fr-form-template">
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
						</xf:instance>
						<xf:instance id="grid-4-template" xxf:exclude-result-prefixes="#all" xxf:readonly="true">
							<grid-4-iteration>
								<city/>
							</grid-4-iteration>
						</xf:instance>
						<xf:bind id="fr-form-binds" ref="instance(''fr-form-instance'')">
							<xf:bind id="grid-5-bind" name="grid-5" ref="grid-5">
								<xf:bind id="country-bind" name="country" ref="country" xxf:whitespace="trim"/>
							</xf:bind>
							<xf:bind id="section-4-bind" name="section-4" ref="section-4">
								<xf:bind id="grid-4-bind" name="grid-4" ref="grid-4">
									<xf:bind id="grid-4-iteration-bind" name="grid-4-iteration" ref="grid-4-iteration">
										<xf:bind id="city-bind" name="city" ref="city" xxf:whitespace="trim"/>
									</xf:bind>
								</xf:bind>
							</xf:bind>
						</xf:bind>
						<xf:instance id="fr-form-resources" xxf:readonly="true">
							<resources>
								<resource xml:lang="en">
									<section-3>
										<label>Country</label>
										<help/>
									</section-3>
									<country>
										<label>Country</label>
										<hint/>
									</country>
									<section-4>
										<label>Cities</label>
										<help/>
									</section-4>
									<city>
										<label>City</label>
										<hint/>
									</city>
								</resource>
							</resources>
						</xf:instance>
						<xf:instance id="readonly">
							<readonly/>
						</xf:instance>
						<xf:var name="fr-params" value="xxf:instance(''fr-parameters-instance'')"/>
						<xf:var name="fr-mode" value="$fr-params/mode"/>
						<xf:bind readonly="                             fr:is-readonly-mode()         or                             instance(''readonly'') = ''true'' or                             fr:is-design-time()" ref="instance(''fr-form-instance'')"/>
						<xf:action class="fr-design-time-preserve" event="xforms-model-construct-done">
							<xf:var name="is-empty" value="empty(instance()/*)"/>
							<xf:action if="$is-empty">
								<xf:insert context="instance()" origin="instance(''fr-form-template'')/*"/>
								<xf:rebuild/>
								<xf:recalculate xxf:defaults="true"/>
							</xf:action>
							<xf:action if="not($is-empty)">
								<xf:var xmlns:migration="java:org.orbeon.oxf.fr.SimpleDataMigration" name="simply-migrated" value="                                     migration:dataMaybeWithSimpleMigration(                                         event(''xxf:absolute-targetid''),                                         instance(''fr-form-template''),                                         instance()                                     )"/>
								<xf:action if="exists($simply-migrated)">
									<xf:delete ref="instance()/*"/>
									<xf:insert context="instance()" origin="$simply-migrated/*"/>
									<xf:rebuild/>
									<xf:recalculate xxf:defaults="true"/>
								</xf:action>
							</xf:action>
						</xf:action>
						<xf:action event="xforms-model-construct-done">
							<xf:insert xmlns:migration="java:org.orbeon.oxf.fr.SimpleDataMigration" context="." iterate="migration:iterateBinds(event(''xxf:absolute-targetid''), instance())" origin="xf:attribute(''fr:relevant'', ''false'')"/>
						</xf:action>
						<xf:insert context="event(''xxf:binding'')" event="xforms-disabled" if="event(''xxf:binding'')/root()/* is instance(''fr-form-instance'')" observer="fr-section-template-view" origin="xf:attribute(''fr:relevant'', ''false'')" xxf:phantom="true"/>
						<xf:delete event="xforms-enabled" if="event(''xxf:binding'')/root() is instance(''fr-form-instance'')/root()" observer="fr-section-template-view" ref="event(''xxf:binding'')/@fr:relevant" xxf:phantom="true"/>
					</xf:model>
				</xbl:implementation>
				<xbl:template>
					<xf:group appearance="xxf:internal" id="fr-section-template-view" model="section-3-model">
						<xf:var id="context" name="context" value="xxf:binding-context(''gs-section-3-component'')"/>
						<xf:var as="xs:boolean" name="readonly" value="exf:readonly($context)">
							<xf:setvalue class="fr-design-time-preserve" event="xforms-enabled xforms-value-changed" ref="instance(''readonly'')" value="exf:readonly($context)"/>
						</xf:var>
						<xf:var as="element()?" name="fr-resources">
							<xxf:value xxbl:scope="outer" value="$fr-resources"/>
						</xf:var>
						<xf:var as="element(resource)" name="form-resources" value="instance(''fr-form-resources'')/(resource[@xml:lang = xxf:instance(''fr-language-instance'')], resource[1])[1]"/>
						<xf:label xmlns:oxf="http://www.orbeon.com/oxf/processors" ref="$form-resources/section-3/label"/>
						<fr:grid xmlns:oxf="http://www.orbeon.com/oxf/processors" bind="grid-5-bind" id="grid-5-grid">
							<fr:c w="12" x="1" y="1">
								<xf:input bind="country-bind" class="fr-summary fr-search" id="country-control">
									<xf:label ref="$form-resources/country/label"/>
									<xf:hint ref="$form-resources/country/hint"/>
									<xf:alert ref="$fr-resources/detail/labels/alert"/>
								</xf:input>
							</fr:c>
						</fr:grid>
						<fr:section xmlns:oxf="http://www.orbeon.com/oxf/processors" bind="section-4-bind" id="section-4-section">
							<xf:label ref="$form-resources/section-4/label"/>
							<fr:grid apply-defaults="true" bind="grid-4-bind" id="grid-4-grid" fb:initial-iterations="first" min="1" repeat="content" template="instance(''grid-4-template'')">
								<fr:c w="12" x="1" y="1">
									<xf:input bind="city-bind" id="city-control">
										<xf:label ref="$form-resources/city/label"/>
										<xf:hint ref="$form-resources/city/hint"/>
										<xf:alert ref="$fr-resources/detail/labels/alert"/>
									</xf:input>
								</fr:c>
							</fr:grid>
						</fr:section>
					</xf:group>
				</xbl:template>
			</xbl:binding>
		</xbl:xbl>
	</xh:head>
	<xh:body>
		<fr:view>
			<fr:body xmlns:oxf="http://www.orbeon.com/oxf/processors" xmlns:p="http://www.orbeon.com/oxf/pipeline" xmlns:xbl="http://www.w3.org/ns/xbl">
				<fr:section bind="section-2-bind" id="section-2-section">
					<xf:label ref="$form-resources/section-2/label"/>
					<component:section-1 xmlns:component="http://orbeon.org/oxf/xml/form-builder/component/gs/library" xmlns:fbf="java:org.orbeon.oxf.fb.FormBuilderXPathApi" xmlns:frf="java:org.orbeon.oxf.fr.FormRunner" xmlns:xxbl="http://orbeon.org/oxf/xml/xbl" xmlns="http://orbeon.org/oxf/xml/form-builder"/>
				</fr:section>
			</fr:body>
		</fr:view>
	</xh:body>
</xh:html>'