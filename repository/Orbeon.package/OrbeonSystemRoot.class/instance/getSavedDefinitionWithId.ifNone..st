forms - saved
getSavedDefinitionWithId: stringId ifNone: aBlock
	"The receiver answer <anOrbeonSavedFormDefinition> with id <stringId> if none evaluate the block <aBlock> "
	| appCollection |

	appCollection := (applications  select: [:eachApp | (eachApp getSavedDefinitionWithId: stringId ifNone: [nil]) notNil]) asArray.

	^appCollection isEmpty
		ifFalse: [appCollection last getSavedDefinitionWithId: stringId ifNone: aBlock]
		ifTrue: aBlock