other
onVersionChanged: value
	| definition |

	exportComponent := exportComponent ifNotNil: [exportComponent answer. nil].

	selectedVersion := value.

	definition := self getOrbeonApplicationClass getLastPublishedDefinitionNamed: form fromApplicationNamed: app withVersion: selectedVersion ifNone: [nil].

	definition isNil "-all- was selected"
	ifTrue: [self setCollection: (self getOrbeonApplicationClass getAllInstancesOf: app definitionNamed: form)]
	ifFalse: [self setCollection: (definition registry getAllInstancesOf: selectedVersion)].