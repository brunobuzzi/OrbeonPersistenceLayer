field instances
removeFieldInstance: aAppFieldValue

	(fieldInstances includesKey: aAppFieldValue name) ifFalse: [^aAppFieldValue].

	^(fieldInstances at: aAppFieldValue name) remove: aAppFieldValue ifAbsent: [nil]