issue 131
formSavedDefinition_emb_registration_v2

	^'<?xml version="1.0" encoding="UTF-8"?>
<xh:html xmlns:array="http://www.w3.org/2005/xpath-functions/array" xmlns:ev="http://www.w3.org/2001/xml-events" xmlns:exf="http://www.exforms.org/exf/1-0" xmlns:fb="http://orbeon.org/oxf/xml/form-builder" xmlns:fr="http://orbeon.org/oxf/xml/form-runner" xmlns:map="http://www.w3.org/2005/xpath-functions/map" xmlns:saxon="http://saxon.sf.net/" xmlns:soap="http://schemas.xmlsoap.org/soap/envelope/" xmlns:sql="http://orbeon.org/oxf/xml/sql" xmlns:xf="http://www.w3.org/2002/xforms" xmlns:xh="http://www.w3.org/1999/xhtml" xmlns:xi="http://www.w3.org/2001/XInclude" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xxf="http://orbeon.org/oxf/xml/xforms" xmlns:xxi="http://orbeon.org/oxf/xml/xinclude" fr:data-format-version="2019.1.0">
	<xh:head>
		<xh:title>Registration</xh:title>
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
					<application-name>emb</application-name>
					<form-name>registration</form-name>
					<title xml:lang="en">Registration</title>
					<description xml:lang="en"/>
					<created-with-version>2020.1.1.202102012142 PE</created-with-version>
					<library-versions>
						<app>2</app>
					</library-versions>
					<updated-with-version>2020.1.1.202102012142 PE</updated-with-version>
					<migration version="2019.1.0">{"migrations":[{"containerPath":[{"value":"section-2"}],"newGridElem":{"value":"grid-1"},"afterElem":null,"content":[{"value":"name"},{"value":"surname"}],"topLevel":false}]}</migration>
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
		<xbl:xbl xmlns:component="http://orbeon.org/oxf/xml/form-builder/component/emb/library" xmlns:fbf="java:org.orbeon.oxf.fb.FormBuilderXPathApi" xmlns:frf="java:org.orbeon.oxf.fr.FormRunner" xmlns:p="http://www.orbeon.com/oxf/pipeline" xmlns:xbl="http://www.w3.org/ns/xbl" xmlns:xxbl="http://orbeon.org/oxf/xml/xbl">
			<xbl:binding class="fr-section-component" element="component|section-1" id="emb-section-1-component">
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
										<label>Library</label>
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
						<xf:var id="context" name="context" value="xxf:binding-context(''emb-section-1-component'')"/>
						<xf:var as="xs:boolean" name="readonly" value="exf:readonly($context)">
							<xf:setvalue class="fr-design-time-preserve" event="xforms-enabled xforms-value-changed" ref="instance(''readonly'')" value="exf:readonly($context)"/>
						</xf:var>
						<xf:var as="element()?" name="fr-resources">
							<xxf:value xxbl:scope="outer" value="$fr-resources"/>
						</xf:var>
						<xf:var as="element(resource)" name="form-resources" value="instance(''fr-form-resources'')/(resource[@xml:lang = xxf:instance(''fr-language-instance'')], resource[1])[1]"/>
						<xf:label xmlns:oxf="http://www.orbeon.com/oxf/processors" ref="$form-resources/section-1/label"/>
						<fr:grid xmlns:oxf="http://www.orbeon.com/oxf/processors" bind="grid-1-bind" id="grid-1-grid">
							<fr:c w="12" x="1" y="1">
								<xf:input bind="name-bind" class="fr-summary fr-search" id="name-control">
									<xf:label ref="$form-resources/name/label"/>
									<xf:hint ref="$form-resources/name/hint"/>
									<xf:alert ref="$fr-resources/detail/labels/alert"/>
								</xf:input>
							</fr:c>
							<fr:c w="12" x="1" y="2">
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
		</xbl:xbl>
	</xh:head>
	<xh:body>
		<fr:view>
			<fr:body xmlns:oxf="http://www.orbeon.com/oxf/processors" xmlns:p="http://www.orbeon.com/oxf/pipeline" xmlns:xbl="http://www.w3.org/ns/xbl">
				<fr:section bind="section-2-bind" id="section-2-section">
					<xf:label ref="$form-resources/section-2/label"/>
					<component:section-1 xmlns:component="http://orbeon.org/oxf/xml/form-builder/component/emb/library" xmlns:fbf="java:org.orbeon.oxf.fb.FormBuilderXPathApi" xmlns:frf="java:org.orbeon.oxf.fr.FormRunner" xmlns:xxbl="http://orbeon.org/oxf/xml/xbl" xmlns="http://orbeon.org/oxf/xml/form-builder"/>
				</fr:section>
			</fr:body>
		</fr:view>
	</xh:body>
</xh:html>'