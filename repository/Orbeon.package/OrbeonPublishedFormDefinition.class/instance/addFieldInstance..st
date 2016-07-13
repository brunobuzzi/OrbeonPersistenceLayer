field instances
addFieldInstance: aAppFieldValue
	"Add <aFormFieldValue> to the receiver. Ask for the key <aAppFieldValue name> to get the IdentitySet for that field name.
	#fieldInstances at: fieldName -  answer anIdentitySet with all AppFieldValue for that field name.
	This IdentitySet has an index to sort fields"
	| indexedCollection |

	indexedCollection := (fieldInstances includesKey: aAppFieldValue name) 
		ifFalse: [fieldInstances at: aAppFieldValue name put: RcIdentityBag new]
		ifTrue: [fieldInstances at: aAppFieldValue name].

	^indexedCollection add: aAppFieldValue