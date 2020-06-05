summary
generateXmlNodeForAllWith: aXMLWriter
	"The receiver generate XML nodes for summary fields of form <anOrbeonFormInstance> with form definition <formDefinition>.
	The summary fields to show are in <collectionOfNames>.
	The form definition <formDefinition> the username and <username> the group <group> are used to get the permissions"
	| to presenterCollection |

"	to := (self pageTo >= self resultSize) ifTrue: [self resultSize] ifFalse: [self pageTo].

	presenterCollection := (mode = #noSearch)
		ifTrue: [resultCollection]
		ifFalse: [resultCollection copyFrom: self pageFrom to: to]."

	summary contents do: [:each | self generateXmlNodeFor: each with: aXMLWriter]