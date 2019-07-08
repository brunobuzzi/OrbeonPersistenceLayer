stream
getCollection
	"The receiver answer a collection of elements from <fromIndex> to <toIndex>"

	self position: fromIndex - 1. "set the <currentStream> position" "issue #223"

	fromIndex to: toIndex do: [:index | | form |
		self atEnd 
		ifFalse: [
			form := self nextObject.
"			(form notNil and: [form canBeDisplayedFor: user role: group latestDefinition: definitionRegistry getLastVersion]) ifTrue: [formsInRange add: form]."
			form notNil ifTrue: [formsInRange add: form].
		].
	].

	^formsInRange asOrderedCollection