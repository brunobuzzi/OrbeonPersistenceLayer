form instances
addDraft: anOrbeonFormInstance

	anOrbeonFormInstance definition: self.

	(drafts includesKey: anOrbeonFormInstance id) ifFalse: [drafts at: anOrbeonFormInstance id put: OrderedCollection new].

	^(drafts at: anOrbeonFormInstance id) add: anOrbeonFormInstance