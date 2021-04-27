private
apiNamed: aString

	^apiOperations at: aString ifAbsent: [self assert: false]