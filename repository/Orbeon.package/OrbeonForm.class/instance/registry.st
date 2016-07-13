other
registry
	| application |

	application := self getApplication.
	application ifNil: [^nil].

	^application registryForFormNamed: self formName ifNone: [nil]