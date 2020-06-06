builder summary
generateXmlNodeForAllDefinitionWith: aXMLWriter
	"The receiver generate a XML structure for the definition <anOrbeonFormInstanceDefinition>.
	Defaults fields to show (createdTime, draft, modifiedTime, app, form, title, description).
	This is method is for Form Builder Summary"

	summary contents do: [:each | self generateXmlNodeForDefinition: each with: aXMLWriter]