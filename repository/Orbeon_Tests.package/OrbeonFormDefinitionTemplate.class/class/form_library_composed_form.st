library forms
form_library_composed_form

	^'<xh:html xmlns:ev="http://www.w3.org/2001/xml-events" xmlns:exf="http://www.exforms.org/exf/1-0" xmlns:fb="http://orbeon.org/oxf/xml/form-builder" xmlns:fr="http://orbeon.org/oxf/xml/form-runner" xmlns:saxon="http://saxon.sf.net/" xmlns:soap="http://schemas.xmlsoap.org/soap/envelope/" xmlns:sql="http://orbeon.org/oxf/xml/sql" xmlns:xf="http://www.w3.org/2002/xforms" xmlns:xh="http://www.w3.org/1999/xhtml" xmlns:xi="http://www.w3.org/2001/XInclude" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xxf="http://orbeon.org/oxf/xml/xforms" xmlns:xxi="http://orbeon.org/oxf/xml/xinclude">
	<xh:head>
		<xh:meta content="text/html; charset=UTF-8" http-equiv="Content-Type"/>
		<xh:title>Library Composed Form</xh:title>
		<xf:model id="fr-form-model" xxf:expose-xpath-types="true"><!-- Main instance --><xf:instance id="fr-form-instance" xxf:exclude-result-prefixes="#all" xxf:index="id">
				<form>
					<internal-section>
						<s/>
						<k/>
						<uuid/>
						<oop/>
						<assignmentOop/>
					</internal-section>
					<login-section>
						<username/>
						<rol/>
						<processId/>
					</login-section>
					<section-name>
						<name/>
						<surname/>
					</section-name>
					<section-address>
						<street/>
						<number/>
						<subNumber/>
					</section-address>
				</form>
			</xf:instance><!-- Bindings --><xf:bind id="fr-form-binds" ref="instance(''fr-form-instance'')">
				<xf:bind id="internal-section-bind" name="internal-section" ref="internal-section"/>
				<xf:bind id="login-section-bind" name="login-section" ref="login-section"/>
				<xf:bind id="section-name-bind" name="section-name" ref="section-name"/>
				<xf:bind id="section-address-bind" name="section-address" ref="section-address"/>
			</xf:bind><!-- Metadata --><xf:instance id="fr-form-metadata" xxf:exclude-result-prefixes="#all" xxf:readonly="true">
				<metadata>
					<application-name>ue</application-name>
					<form-name>library-composed-form</form-name>
					<title xml:lang="en">Library Composed Form</title>
					<description xml:lang="en">Library Composed Form</description>
					<description xml:lang="es"/>
					<version-comment/>
				</metadata>
			</xf:instance><!-- Attachments --><xf:instance id="fr-form-attachments" xxf:exclude-result-prefixes="#all">
				<attachments>
					<css filename="" mediatype="text/css" size=""/>
					<pdf filename="" mediatype="application/pdf" size=""/>
				</attachments>
			</xf:instance><!-- All form resources --><!-- Dont make readonly by default in case a service modifies the resources --><xf:instance id="fr-form-resources" xxf:exclude-result-prefixes="#all" xxf:readonly="false">
				<resources>
					<resource xml:lang="en">
						<section-name>
							<label>Name</label>
							<help/>
						</section-name>
						<internal-section>
							<label>Internal</label>
							<help/>
						</internal-section>
						<login-section>
							<label>User</label>
							<help/>
						</login-section>
						<section-address>
							<label>Adress</label>
							<help/>
						</section-address>
					</resource>
					<resource xml:lang="es">
						<section-name>
							<label/>
							<help/>
						</section-name>
						<internal-section>
							<label/>
							<help/>
						</internal-section>
						<login-section>
							<label/>
							<help/>
						</login-section>
						<section-address>
							<label/>
							<help/>
						</section-address>
					</resource>
				</resources>
			</xf:instance><!-- Utility instances for services --><xf:instance id="fr-service-request-instance" xxf:exclude-result-prefixes="#all">
				<request/>
			</xf:instance><xf:instance id="fr-service-response-instance" xxf:exclude-result-prefixes="#all">
				<response/>
			</xf:instance></xf:model>
	</xh:head>
	<xh:body>
		<fr:view>
			<fr:body xmlns:oxf="http://www.orbeon.com/oxf/processors" xmlns:p="http://www.orbeon.com/oxf/pipeline" xmlns:xbl="http://www.w3.org/ns/xbl">
				<fr:section bind="internal-section-bind" id="internal-section-control">
					<xf:label ref="$form-resources/internal-section/label"/>
					<component:internal-section xmlns="http://orbeon.org/oxf/xml/form-builder" xmlns:component="http://orbeon.org/oxf/xml/form-builder/component/orbeon/library" xmlns:fbf="java:org.orbeon.oxf.fb.FormBuilder" xmlns:xxbl="http://orbeon.org/oxf/xml/xbl"/>
				</fr:section>
				<fr:section bind="login-section-bind" id="login-section-control">
					<xf:label ref="$form-resources/login-section/label"/>
					<component:login-section xmlns="http://orbeon.org/oxf/xml/form-builder" xmlns:component="http://orbeon.org/oxf/xml/form-builder/component/orbeon/library" xmlns:fbf="java:org.orbeon.oxf.fb.FormBuilder" xmlns:xxbl="http://orbeon.org/oxf/xml/xbl"/>
				</fr:section>
				<fr:section bind="section-name-bind" id="section-name-control">
					<xf:label ref="$form-resources/section-name/label"/>
					<component:section-name xmlns="http://orbeon.org/oxf/xml/form-builder" xmlns:component="http://orbeon.org/oxf/xml/form-builder/component/ue/library" xmlns:fbf="java:org.orbeon.oxf.fb.FormBuilder" xmlns:xxbl="http://orbeon.org/oxf/xml/xbl"/>
				</fr:section>
				<fr:section bind="section-address-bind" id="section-address-control">
					<xf:label ref="$form-resources/section-address/label"/>
					<component:section-address xmlns="http://orbeon.org/oxf/xml/form-builder" xmlns:component="http://orbeon.org/oxf/xml/form-builder/component/ue/library" xmlns:fbf="java:org.orbeon.oxf.fb.FormBuilder" xmlns:xxbl="http://orbeon.org/oxf/xml/xbl"/>
				</fr:section>
			</fr:body>
		</fr:view>
	</xh:body>
</xh:html>'