other
transformCache
	| newCache |

	newCache := Dictionary new.

	self cache do: [:each | newCache at: each name put: each].

	^newCache