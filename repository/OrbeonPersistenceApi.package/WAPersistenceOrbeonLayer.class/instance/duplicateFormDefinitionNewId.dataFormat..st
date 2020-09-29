service-put
duplicateFormDefinitionNewId: id dataFormat: dataFormatVersion
	"This service duplicate the <OrbeonPublishedFormDefinition> contained in the request body with the new id <id>"
	| apiOperation |
	<put>
	<produces: 'application/xml'>
	<path: '/crud/orbeon/builder/data/{1}/data.xml?data-format-version={2}'>

	apiOperation := OrbeonFormDefinitionDuplicateApi newWithXml: (self requestContext request bodyDecodeUsing: 'utf-8') id: id.
	apiOperation 		
		group: (self requestContext request headerAt: 'orbeon-group');
		user: (self requestContext request headerAt: 'orbeon-username');
		setUserCredentialsFrom: (self requestContext request headerAt: 'orbeon-credentials').

	^apiOperation doIt