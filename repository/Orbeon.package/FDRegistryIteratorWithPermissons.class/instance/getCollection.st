stream
getCollection

	[self position: fromIndex - 1] on: ImproperOrbeonOperationException do: [:ex | ^#()].

	fromIndex to: toIndex do: [:index | self nextObject ifNotNil: [:form | formsInRange add: form]].

	^formsInRange asOrderedCollection