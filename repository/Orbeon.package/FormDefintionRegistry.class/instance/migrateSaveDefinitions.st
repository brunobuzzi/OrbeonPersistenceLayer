saved definitions
migrateSaveDefinitions
	"Migrate the old structure to new one (30/09/2015)"
	| oldDefnitions |

	oldDefnitions := savedDefinitions asOrderedCollection.

	savedDefinitions := OrderPreservingDictionary new.

	oldDefnitions do: [:each | self addSavedDefinition: each]