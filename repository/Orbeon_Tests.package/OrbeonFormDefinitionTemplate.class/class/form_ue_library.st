library forms
form_ue_library

	^'<xh:html xmlns:ev="http://www.w3.org/2001/xml-events" xmlns:exf="http://www.exforms.org/exf/1-0" xmlns:fb="http://orbeon.org/oxf/xml/form-builder" xmlns:fr="http://orbeon.org/oxf/xml/form-runner" xmlns:saxon="http://saxon.sf.net/" xmlns:soap="http://schemas.xmlsoap.org/soap/envelope/" xmlns:sql="http://orbeon.org/oxf/xml/sql" xmlns:xf="http://www.w3.org/2002/xforms" xmlns:xh="http://www.w3.org/1999/xhtml" xmlns:xi="http://www.w3.org/2001/XInclude" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xxf="http://orbeon.org/oxf/xml/xforms" xmlns:xxi="http://orbeon.org/oxf/xml/xinclude">
	<xh:head>
		<xh:meta content="text/html; charset=UTF-8" http-equiv="Content-Type"/>
		<xh:title>Library Composed Form</xh:title>
		<xf:model xxf:expose-xpath-types="true" id="fr-form-model"><!-- Main instance --><xf:instance xxf:exclude-result-prefixes="#all" id="fr-form-instance" xxf:index="id">
				<form>
					<internal-section>
						<s/>
						<k/>
						<uuid/>
						<oop/>
						<assignmentOop/>
					</internal-section>
					<section-11>
						<username/>
						<rol/>
						<processId/>
					</section-11>
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
				<xf:bind id="internal-section-bind" name="internal-section" ref="internal-section">
					<xf:bind calculate="xxf:get-request-parameter(''s'')" xxf:default="xxf:get-request-parameter(''s'')" id="s-bind" name="s" readonly="true()" ref="s" required="true()"/>
					<xf:bind calculate="xxf:get-request-parameter(''k'')" xxf:default="xxf:get-request-parameter(''k'')" id="k-bind" name="k" readonly="true()" ref="k" required="true()"/>
					<xf:bind calculate="xxf:get-request-parameter(''token'')" xxf:default="xxf:get-request-parameter(''token'')" id="uuid-bind" name="uuid" readonly="true()" ref="uuid" required="true()"/>
					<xf:bind calculate="xxf:get-request-parameter(''oop'')" xxf:default="xxf:get-request-parameter(''oop'')" id="oop-bind" name="oop" readonly="true()" ref="oop" required="true()"/>
					<xf:bind calculate="xxf:get-request-parameter(''oop2'')" xxf:default="xxf:get-request-parameter(''oop2'')" id="assignmentOop-bind" name="assignmentOop" readonly="true()" ref="assignmentOop" required="true()"/>
				</xf:bind>
				<xf:bind id="section-11-bind" name="section-11" ref="section-11">
					<xf:bind id="username-bind" name="username" readonly="true()" ref="username" required="true()"/>
					<xf:bind id="processId-bind" name="processId" readonly="true()" ref="processId" required="true()"/>
					<xf:bind id="rol-bind" name="rol" readonly="true()" ref="rol" required="true()"/>
				</xf:bind>
				<xf:bind id="section-name-bind" name="section-name" ref="section-name"/>
				<xf:bind id="section-address-bind" name="section-address" ref="section-address"/>
			</xf:bind><!-- Metadata --><xf:instance xxf:exclude-result-prefixes="#all" id="fr-form-metadata" xxf:readonly="true">
				<metadata>
					<application-name>ue</application-name>
					<form-name>library-composed-form</form-name>
					<title xml:lang="en">Library Composed Form</title>
					<description xml:lang="en">Library Composed Form</description>
					<title xml:lang="es">Petición de Permiso de Construccion CASA</title>
					<description xml:lang="es"/>
				</metadata>
			</xf:instance><!-- Attachments --><xf:instance xxf:exclude-result-prefixes="#all" id="fr-form-attachments">
				<attachments>
					<css filename="" mediatype="text/css" size=""/>
					<pdf filename="" mediatype="application/pdf" size=""/>
				</attachments>
			</xf:instance><!-- All form resources --><!-- Dont make readonly by default in case a service modifies the resources --><xf:instance xxf:exclude-result-prefixes="#all" id="fr-form-resources" xxf:readonly="false">
				<resources>
					<resource xml:lang="en">
						<username>
							<label>User</label>
							<hint/>
						</username>
						<rol>
							<label>Rol</label>
							<hint/>
						</rol>
						<processId>
							<label>Process Id</label>
							<hint/>
						</processId>
						<section-name>
							<label>Name</label>
							<help/>
						</section-name>
						<section-address>
							<label>Adress</label>
							<help/>
						</section-address>
						<internal-section>
							<label>Internal Section</label>
						</internal-section>
						<s>
							<label>S</label>
							<hint/>
						</s>
						<k>
							<label>K</label>
							<hint/>
						</k>
						<uuid>
							<label>UUID</label>
							<hint/>
						</uuid>
						<oop>
							<label>OOP</label>
							<hint/>
						</oop>
						<assignmentOop>
							<label>OOP2</label>
							<hint/>
						</assignmentOop>
						<section-11>
							<label>Usuario</label>
							<help/>
						</section-11>
					</resource>
					<resource xml:lang="es">
						<username>
							<label>User</label>
							<hint/>
						</username>
						<rol>
							<label>Rol</label>
							<hint/>
						</rol>
						<processId>
							<label>Form Id</label>
							<hint/>
						</processId>
						<section-name>
							<label/>
							<help/>
						</section-name>
						<section-address>
							<label/>
							<help/>
						</section-address>
						<internal-section>
							<label>Internal Section</label>
						</internal-section>
						<s>
							<label>S</label>
							<hint/>
						</s>
						<k>
							<label>K</label>
							<hint/>
						</k>
						<uuid>
							<label>UUID</label>
							<hint/>
						</uuid>
						<oop>
							<label>OOP</label>
							<hint/>
						</oop>
						<assignmentOop>
							<label/>
							<hint/>
						</assignmentOop>
						<section-11>
							<label>Usuario</label>
							<help/>
						</section-11>
					</resource>
				</resources>
			</xf:instance><!-- Utility instances for services --><xf:instance xxf:exclude-result-prefixes="#all" id="fr-service-request-instance">
				<request/>
			</xf:instance><xf:instance xxf:exclude-result-prefixes="#all" id="fr-service-response-instance">
				<response/>
			</xf:instance><xf:instance class="fr-service" xxf:exclude-result-prefixes="#all" id="security-token-instance">
				<body xmlns:fbf="java:org.orbeon.oxf.fb.FormBuilder" xmlns:frf="java:org.orbeon.oxf.fr.FormRunner" xmlns:p="http://www.orbeon.com/oxf/pipeline" xmlns:secure="java:org.orbeon.oxf.util.SecureUtils">&lt;uuid&gt;&lt;/uuid&gt;</body>
			</xf:instance><xf:submission class="fr-service" id="security-token-submission" instance="fr-service-response-instance" mediatype="application/xml" method="get" ref="instance(''fr-service-request-instance'')" replace="instance" resource="http://gemstoneIP:8787/orbeon-gemstone-api/securityToken?token={xxf:get-request-parameter(''token'')}" serialization="application/xml"/><xf:action id="security-action-binding"><!-- React to event... on control... --><xf:action event="xforms-ready" if="true()" ev:observer="fr-form-model"><!-- Service to call --><xf:send submission="security-token-submission"/></xf:action><!-- Request actions --><xf:action event="xforms-submit" ev:observer="security-token-submission"><!-- Get reference to initial request --><xf:var as="xs:string" name="request-instance-name" value="''security-token-instance''"/><!-- Copy over to read-write request instance --><xf:insert origin="saxon:parse(instance($request-instance-name))" ref="instance(''fr-service-request-instance'')"/><!--<xf:insert ref="instance(''fr-service-request-instance'')" origin="instance($request-instance-name)"/>--><!-- Set values if needed --><xf:action context="instance(''fr-service-request-instance'')"><!-- Setvalue actions will be here --></xf:action></xf:action><!-- Response actions --><xf:action context="instance(''fr-service-response-instance'')" event="xforms-submit-done" ev:observer="security-token-submission"><xf:action class="fr-set-control-value-action">
						<xf:var name="control-name" value="''username''"/>
						<xf:var name="control-value" value="/result/username"/>
					</xf:action><xf:action class="fr-set-control-value-action">
						<xf:var name="control-name" value="''citizenName''"/>
						<xf:var name="control-value" value="/result/citizenName"/>
					</xf:action><xf:action class="fr-set-control-value-action">
						<xf:var name="control-name" value="''citizenSurname''"/>
						<xf:var name="control-value" value="/result/citizenSurname"/>
					</xf:action><xf:action class="fr-set-control-value-action">
						<xf:var name="control-name" value="''citizenEmail''"/>
						<xf:var name="control-value" value="/result/citizenEmail"/>
					</xf:action><xf:action class="fr-set-control-value-action">
						<xf:var name="control-name" value="''citizenPhone''"/>
						<xf:var name="control-value" value="/result/citizenPhone"/>
					</xf:action><xf:action class="fr-set-control-value-action">
						<xf:var name="control-name" value="''citizenBirth''"/>
						<xf:var name="control-value" value="/result/citizenBirth"/>
					</xf:action><xf:action class="fr-set-control-value-action">
						<xf:var name="control-name" value="''gender''"/>
						<xf:var name="control-value" value="/result/gender"/>
					</xf:action><xf:action class="fr-set-control-value-action">
						<xf:var name="control-name" value="''originCountry''"/>
						<xf:var name="control-value" value="/result/originCountry"/>
					</xf:action><xf:action class="fr-set-control-value-action">
						<xf:var name="control-name" value="''citizenId''"/>
						<xf:var name="control-value" value="/result/citizenId"/>
					</xf:action><xf:action class="fr-set-control-value-action">
						<xf:var name="control-name" value="''rol''"/>
						<xf:var name="control-value" value="/result/rol"/>
					</xf:action><xf:action class="fr-set-control-value-action">
						<xf:var name="control-name" value="''processId''"/>
						<xf:var name="control-value" value="/result/processid"/>
					</xf:action><!-- Response actions will be here --></xf:action></xf:action></xf:model>
	</xh:head>
	<xh:body>
		<fr:view>
			<fr:body xmlns:oxf="http://www.orbeon.com/oxf/processors" xmlns:p="http://www.orbeon.com/oxf/pipeline" xmlns:xbl="http://www.w3.org/ns/xbl">
				<fr:section bind="internal-section-bind" id="internal-section-control">
					<xf:label ref="$form-resources/internal-section/label"/>
					<fr:grid>
						<xh:tr>
							<xh:td>
								<xf:input bind="s-bind" id="s-control">
									<xf:label ref="$form-resources/s/label"/>
									<xf:hint ref="$form-resources/s/hint"/>
									<xf:alert ref="$fr-resources/detail/labels/alert"/>
								</xf:input>
							</xh:td>
							<xh:td>
								<xf:input bind="k-bind" id="k-control">
									<xf:label ref="$form-resources/k/label"/>
									<xf:hint ref="$form-resources/k/hint"/>
									<xf:alert ref="$fr-resources/detail/labels/alert"/>
								</xf:input>
							</xh:td>
							<xh:td>
								<xf:input bind="uuid-bind" id="uuid-control">
									<xf:label ref="$form-resources/uuid/label"/>
									<xf:hint ref="$form-resources/uuid/hint"/>
									<xf:alert ref="$fr-resources/detail/labels/alert"/>
								</xf:input>
							</xh:td>
						</xh:tr>
						<xh:tr>
							<xh:td>
								<xf:input bind="oop-bind" id="oop-control">
									<xf:label ref="$form-resources/oop/label"/>
									<xf:hint ref="$form-resources/oop/hint"/>
									<xf:alert ref="$fr-resources/detail/labels/alert"/>
								</xf:input>
							</xh:td>
							<xh:td>
								<xf:input bind="assignmentOop-bind" id="assignmentOop-control">
									<xf:label ref="$form-resources/assignmentOop/label"/>
									<xf:hint ref="$form-resources/assignmentOop/hint"/>
									<xf:alert ref="$fr-resources/detail/labels/alert"/>
								</xf:input>
							</xh:td>
							<xh:td/>
						</xh:tr>
					</fr:grid>
				</fr:section>
				<fr:section bind="section-11-bind" id="section-11-control">
					<xf:label ref="$form-resources/section-11/label"/>
					<fr:grid>
						<xh:tr>
							<xh:td>
								<xf:input bind="username-bind" id="username-control">
									<xf:label ref="$form-resources/username/label"/>
									<xf:hint ref="$form-resources/username/hint"/>
									<xf:alert ref="$fr-resources/detail/labels/alert"/>
								</xf:input>
							</xh:td>
							<xh:td>
								<xf:input bind="rol-bind" id="rol-control">
									<xf:label ref="$form-resources/rol/label"/>
									<xf:hint ref="$form-resources/rol/hint"/>
									<xf:alert ref="$fr-resources/detail/labels/alert"/>
								</xf:input>
							</xh:td>
							<xh:td>
								<xf:input bind="processId-bind" id="processId-control">
									<xf:label ref="$form-resources/processId/label"/>
									<xf:hint ref="$form-resources/processId/hint"/>
									<xf:alert ref="$fr-resources/detail/labels/alert"/>
								</xf:input>
							</xh:td>
						</xh:tr>
					</fr:grid>
				</fr:section>
				<fr:section bind="section-name-bind" id="section-name-control">
					<xf:label ref="$form-resources/section-name/label"/>
					<component:section-1 xmlns="http://orbeon.org/oxf/xml/form-builder" xmlns:component="http://orbeon.org/oxf/xml/form-builder/component/ue/library" xmlns:fbf="java:org.orbeon.oxf.fb.FormBuilder" xmlns:xxbl="http://orbeon.org/oxf/xml/xbl"/>
				</fr:section>
				<fr:section bind="section-address-bind" id="section-address-control">
					<xf:label ref="$form-resources/section-address/label"/>
					<component:section-4 xmlns="http://orbeon.org/oxf/xml/form-builder" xmlns:component="http://orbeon.org/oxf/xml/form-builder/component/ue/library" xmlns:fbf="java:org.orbeon.oxf.fb.FormBuilder" xmlns:xxbl="http://orbeon.org/oxf/xml/xbl"/>
				</fr:section>
			</fr:body>
		</fr:view>
	</xh:body>
</xh:html>'