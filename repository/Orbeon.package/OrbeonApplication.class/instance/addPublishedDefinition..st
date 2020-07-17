published forms
addPublishedDefinition: anOrbeonPublishedFormDefinition
	"Add a new form definition <anOrbeonPublishedFormDefinition> to receiver's registry"
	| 	registry |

	(self hasRegistryFor: anOrbeonPublishedFormDefinition) "check if the registry already exist, if not it creates it"
	ifFalse: [self createRegistryFor: anOrbeonPublishedFormDefinition].

	registry := self registryFor: anOrbeonPublishedFormDefinition.

	(registry isIdEqualTo: anOrbeonPublishedFormDefinition id) 
	ifFalse: [^ImproperOrbeonOperationException signal: 'It is forbidden to publish a form when the app and form name already exist and the id is different'].

	"add the definition to the registry"
	^registry addCurrentVersion: anOrbeonPublishedFormDefinition