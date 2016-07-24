other
assertDateFieldNamed: aString withValues: anArray 
	| fieldInstances holder fieldInstance result |

	fieldInstances := form generateFormFieldValueSet.

	holder := fieldInstances at: aString.
	result := anArray allSatisfy: [:e | holder hasCurrentValue: e].
 
	anArray do: [:each | 
		fieldInstance := holder getFieldValueWith: each.
		result :=  result and: 
						[(fieldInstance stType == Date) and: [
						(fieldInstance value class == Date) and: [
						fieldInstance value = each]]].
	].

	^result