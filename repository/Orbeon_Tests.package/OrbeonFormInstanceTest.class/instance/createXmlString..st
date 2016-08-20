other
createXmlString: int
	| xmlInstances |

	xmlInstances := OrderedCollection new.

	1 to: int do: [:index | xmlInstances add: self getRandomXMLFormInstance].

	^xmlInstances