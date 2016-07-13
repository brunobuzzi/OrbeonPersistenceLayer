other
isInEdition

	^(modifiedTime time subtractTime: instanceDefinition  modifiedTime time) asSeconds > 12