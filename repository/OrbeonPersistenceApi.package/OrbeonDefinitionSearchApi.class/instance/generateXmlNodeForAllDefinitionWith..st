builder summary
generateXmlNodeForAllDefinitionWith: aXMLWriter
	"The receiver generate a XML structure for the definition <anOrbeonFormInstanceDefinition>.
	Defaults fields to show (createdTime, draft, modifiedTime, app, form, title, description).
	This is method is for Form Builder Summary"
	| to |

	to := (self pageTo >= self resultSize) ifTrue: [self resultSize] ifFalse: [self pageTo].

	(resultCollection copyFrom: self pageFrom to: to) do: [:each | self generateXmlNodeForDefinition: each with: aXMLWriter]