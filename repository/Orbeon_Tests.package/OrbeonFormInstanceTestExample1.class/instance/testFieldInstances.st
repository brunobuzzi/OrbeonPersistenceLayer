other
testFieldInstances
	| fieldInstances holder fieldInstance |

	fieldInstances := form generateFormFieldValueSet.

	holder := (fieldInstances at: 'autocomplete').
	holder currentValues ifEmpty: [self assert: false].
	fieldInstance := holder currentValues last.
	self assert: (fieldInstance stType == String).
	self assert: (fieldInstance value class == String).

	holder := (fieldInstances at: 'boolean').
	holder currentValues ifEmpty: [self assert: false].
	fieldInstance := holder currentValues first.
	self assert: (fieldInstance stType == Boolean).
	self assert: (fieldInstance value isKindOf: Boolean).

	holder := (fieldInstances at: 'currency').
	holder currentValues ifEmpty: [self assert: false].
	fieldInstance := holder currentValues first.
	self assert: (fieldInstance stType == Number).
	self assert: (fieldInstance value isKindOf: Number).

	holder := (fieldInstances at: 'date1').
	holder currentValues ifEmpty: [self assert: false].
	fieldInstance := holder currentValues first.
	self assert: (fieldInstance stType == Date).
	self assert: (fieldInstance value isKindOf: Date).

	holder := (fieldInstances at: 'date2').
	holder currentValues ifEmpty: [self assert: false].
	fieldInstance := holder currentValues first.
	self assert: (fieldInstance stType == Date).
	self assert: (fieldInstance value isKindOf: Date).

	holder := (fieldInstances at: 'date3').
	holder currentValues ifEmpty: [self assert: false].
	fieldInstance := holder currentValues first.
	self assert: (fieldInstance stType == Date).
	self assert: (fieldInstance value isKindOf: Date).

	holder := (fieldInstances at: 'dateTime').
	holder currentValues ifEmpty: [self assert: false].
	fieldInstance := holder currentValues first.
	self assert: (fieldInstance stType == TimeStamp).
	self assert: (fieldInstance value isKindOf: TimeStamp).

	holder := (fieldInstances at: 'details').
	holder currentValues ifEmpty: [self assert: false].
	fieldInstance := holder currentValues last.
	self assert: (fieldInstance stType == String).
	self assert: (fieldInstance value class == String).

	holder := (fieldInstances at: 'details').
	holder currentValues ifEmpty: [self assert: false].
	fieldInstance := holder currentValues last.
	self assert: (fieldInstance stType == String).
	self assert: (fieldInstance value class == String).

	holder := (fieldInstances at: 'mail').
	holder currentValues ifEmpty: [self assert: false].
	fieldInstance := holder currentValues last.
	self assert: (fieldInstance stType == String).
	self assert: (fieldInstance value class == String).

	holder := (fieldInstances at: 'mobile').
	holder currentValues ifEmpty: [self assert: false].
	fieldInstance := holder currentValues last.
	self assert: (fieldInstance stType == String).
	self assert: (fieldInstance value class == String).

	holder := (fieldInstances at: 'moneySubject').
	holder currentValues ifEmpty: [self assert: false].
	fieldInstance := holder currentValues last.
	self assert: (fieldInstance stType == String).
	self assert: (fieldInstance value class == String).

	holder := (fieldInstances at: 'name').
	holder currentValues ifEmpty: [self assert: false].
	fieldInstance := holder currentValues last.
	self assert: (fieldInstance stType == String).
	self assert: (fieldInstance value class == String).

	holder := (fieldInstances at: 'options').
	holder currentValues ifEmpty: [self assert: false].
	fieldInstance := holder currentValues last.
	self assert: (fieldInstance stType == String).
	self assert: (fieldInstance value class == String).

	holder := (fieldInstances at: 'otherOptions').
	holder currentValues ifEmpty: [self assert: false].
	fieldInstance := holder currentValues last.
	self assert: (fieldInstance stType == String).
	self assert: (fieldInstance value class == String).

	holder := (fieldInstances at: 'phone').
	holder currentValues ifEmpty: [self assert: false].
	fieldInstance := holder currentValues last.
	self assert: (fieldInstance stType == String).
	self assert: (fieldInstance value class == String).

	holder := (fieldInstances at: 'quantity').
	holder currentValues ifEmpty: [self assert: false].
	fieldInstance := holder currentValues first.
	self assert: (fieldInstance stType == Number).
	self assert: (fieldInstance value isKindOf: Number).

	holder := (fieldInstances at: 'surname').
	holder currentValues ifEmpty: [self assert: false].
	fieldInstance := holder currentValues last.
	self assert: (fieldInstance stType == String).
	self assert: (fieldInstance value class == String).

	holder := (fieldInstances at: 'type').
	holder currentValues ifEmpty: [self assert: false].
	fieldInstance := holder currentValues last.
	self assert: (fieldInstance stType == String).
	self assert: (fieldInstance value class == String).