service-put
duplicateFormDefinitionNewId: id
	"This service duplicate the <OrbeonFormDefinitionInstance> contained in the request body with the new id <id>"
	| application instanceDefinition currentDefinition |
	<put>
	<produces: 'application/xml'>
	<path: '/crud/orbeon/builder/data/{1}/data.xml'>

	instanceDefinition := OrbeonSavedFormDefinition new.

	instanceDefinition xmlString: self requestContext request rawBody;
		id: id;
		setMetadata;
		version: (self requestContext request headerAt: 'orbeon-form-definition-version');
		updateLastModifiedTime.

	application := self getOrbeonApplicationClass 
							applicationNamed: instanceDefinition getApplicationName
							ifNone: [^NoApplicationException signal: 'No such application [', instanceDefinition getApplicationName, ']'].

	currentDefinition := application getLatestSavedDefinition: instanceDefinition formName.
	instanceDefinition setXmlString: instanceDefinition xmlString; "create the associated OrbeonFormDefinition"
		title: currentDefinition title;
		description: currentDefinition description.

	application addSavedDefinition: instanceDefinition