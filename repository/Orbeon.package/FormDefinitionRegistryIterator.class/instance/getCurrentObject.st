stream
getCurrentObject
	| nextObject |

	currentStream ifNil: [^nil].

	nextObject := currentStream peek.

	^currentDefinition getInstanceWithId: nextObject