other
queryBlock
	| blockString queryBlock |

	blockString := self searchValueAt: 'form-condition'.

	(blockString isNil or: [blockString isEmpty]) ifTrue: [^[:each | true]]. "empty condition --> all collection is going to be selected"

	[queryBlock := blockString evaluate] on: Error do: [:ex| ^self addValue: ex description named: 'queryBlock-error']. "invalid Smalltalk expression"
	
	queryBlock isBlock ifFalse: [^self addValue: 'Invalid Block' named: 'queryBlock-error']. "a valid Smalltalk expression but is not <aBlock>"
	
	^queryBlock