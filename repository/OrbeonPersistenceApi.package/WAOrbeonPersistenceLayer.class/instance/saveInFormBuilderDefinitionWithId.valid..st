service-put
saveInFormBuilderDefinitionWithId: id valid: aBoolean
	"This service is called by Orbeon when a user click on -Save- inside the Form Builder.
	A Form Definition has been saved "
	| apiOperation |
	<put>
	<path: '/crud/orbeon/builder/data/{1}/data.xml/?valid={2}'>

	apiOperation := OrbeonFormBuilderSaveApi newFor: self withXml: self requestContext request rawBody id: id.

	apiOperation createFormReader.

	apiOperation doIt