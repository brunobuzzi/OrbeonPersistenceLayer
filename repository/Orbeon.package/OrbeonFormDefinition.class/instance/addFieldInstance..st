field instances
addFieldInstance: aAppFieldValue
	"Add <aFormFieldValue> to the receiver. Ask for the key <aAppFieldValue name> to get the IdentitySet for that field name.
	#fieldInstances at: fieldName -  answer anIdentitySet with all AppFieldValue for that field name.
	This IdentitySet has an index to sort fields"

	(fieldInstances includesKey: aAppFieldValue name) 
	ifFalse: [| indexedCollection |
		indexedCollection := RcIdentityBag new.
		fieldInstances at: aAppFieldValue name put: indexedCollection.
		indexedCollection add: aAppFieldValue.
		"indexes can NOT be create on empty collections so we add the element first"
		self createFieldIndexFor: aAppFieldValue on: indexedCollection.
		^aAppFieldValue.
		].

	^(fieldInstances at: aAppFieldValue name) add: aAppFieldValue