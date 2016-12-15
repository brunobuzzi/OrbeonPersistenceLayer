service-put
publishFormDefinition: formName app: app withId: documentId
	"This method is called by Orbeon when a Form Definition has been published with form name <formName> in application <app> with form id <documentId>"
	| headerVersion |
	<put>
	<consumes: 'application/xml'>
	<path: '/crud/{2}/{1}/form/form.xhtml?document={3}'>

	headerVersion := self requestContext request headerAt: 'orbeon-form-definition-version'.
	"Orbeon put -next- when a new version is going to be generated, if NOT --> then user has updated the existing version <headerVersion> [new in Orbeon 2016.2.2]"

	^self publishFormDefinitionNamed: formName 
				in: app 
				id: documentId 
				headerVersion: headerVersion 
				xml: self requestContext request rawBody