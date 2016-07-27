other
getOrderedFieldNamesOn: anOrderedCollection
	"Answer a collection <anOrderedCollection> of field's name as they appear in the XML definition"

	(sectionDefinitions orderedKeys reject: [:e | e isNil]) do: [:sectionName | | currentSection |
		currentSection := sectionDefinitions at: sectionName.

		anOrderedCollection addAll: (currentSection fieldDefinitions orderedKeys reject: [:e | e isNil]).

		(currentSection gridDefinitions orderedKeys reject: [:e | e isNil]) do: [:eachGridName | | eachGrid |
			eachGrid := currentSection gridDefinitions at: eachGridName.
			anOrderedCollection addAll: (eachGrid fieldDefinitions orderedKeys reject: [:e | e isNil]).].

		"currentSection subSections orderedKeys do: [:eachSubSectionName | eachSubSectionName]."
	].

	^anOrderedCollection