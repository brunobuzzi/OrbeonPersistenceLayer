service-put
duplicateFormDefinitionNewId: id
	"This service duplicate the <OrbeonPublishedFormDefinition> contained in the request body with the new id <id>"
	| apiOperation |
	<put>
	<produces: 'application/xml'>
	<path: '/crud/orbeon/builder/data/{1}/data.xml'>

	apiOperation := OrbeonFormDefinitionDuplicateApi newFor: self withXml: self requestContext request rawBody id: id.

	apiOperation execute