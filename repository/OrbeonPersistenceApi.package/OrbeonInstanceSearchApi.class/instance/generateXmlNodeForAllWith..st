summary
generateXmlNodeForAllWith: aXMLWriter
	"The receiver generate XML nodes for summary fields of form <anOrbeonFormInstance> with form definition <formDefinition>.
	The summary fields to show are in <collectionOfNames>.
	The form definition <formDefinition> the username and <username> the group <group> are used to get the permissions"
	| to |

	to := (self pageTo >= self resultSize) ifTrue: [self resultSize] ifFalse: [self pageTo].

	(resultCollection copyFrom: self pageFrom to: to) do: [:each | self generateXmlNodeFor: each with: aXMLWriter]