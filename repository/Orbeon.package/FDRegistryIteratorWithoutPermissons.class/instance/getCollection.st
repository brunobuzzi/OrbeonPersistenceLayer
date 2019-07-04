stream
getCollection

	self position: fromIndex. "set the <currentStream> position"

	fromIndex to: toIndex do: [:index | | form |
		self atEnd 
		ifFalse: [
			form := self nextObject.
"			(form notNil and: [form canBeDisplayedFor: user role: group latestDefinition: definitionRegistry getLastVersion]) ifTrue: [formsInRange add: form]."
			form notNil ifTrue: [formsInRange add: form].
		].
	].

	^formsInRange asOrderedCollection