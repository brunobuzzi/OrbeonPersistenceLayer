instance creation
newOn: anOrbeonSystemRoot for: xmlOrbeonFormDefinition with: xmlOrbeonInstance

	^self new 
		setRoot: anOrbeonSystemRoot xmlDefinition: xmlOrbeonFormDefinition xmlInstanceDocument: xmlOrbeonInstance