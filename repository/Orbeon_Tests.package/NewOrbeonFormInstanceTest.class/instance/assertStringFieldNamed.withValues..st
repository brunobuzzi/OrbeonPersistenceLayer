other
assertStringFieldNamed: aString withValues: anArray 
	| fieldInstances holder fieldInstance result |

	fieldInstances := form generateFormFieldValueSet.

	holder := fieldInstances at: aString.
	result := anArray allSatisfy: [:e | holder hasCurrentValue: e].
 
	anArray do: [:each | 
		fieldInstance := holder getFieldValueWith: each.
		result :=  result and: 
						[(fieldInstance stType == String) and: [
						(fieldInstance value class == String) and: [
						fieldInstance value = each]]].
	].

	^result