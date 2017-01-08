field instances
removeDraft: anOrbeonFormInstance

	"anOrbeonFormInstance definition: nil."

	(drafts includesKey: anOrbeonFormInstance id) ifFalse: [^anOrbeonFormInstance].

	(drafts at: anOrbeonFormInstance id) remove: anOrbeonFormInstance ifAbsent: [].

	(drafts at: anOrbeonFormInstance id) isEmpty ifTrue: [drafts removeKey: anOrbeonFormInstance id].

	^anOrbeonFormInstance