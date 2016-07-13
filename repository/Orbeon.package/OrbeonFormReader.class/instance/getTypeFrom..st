query xml
getTypeFrom: eachBindNode
	"This method HAS TO BE IMPROVED. Get the type from the XML node <eachBindNode> "

	(eachBindNode includesAttribute: 'type') ifTrue: [^eachBindNode attributeAt: 'type']. "has the attribute -type-"

	^'xf:string'