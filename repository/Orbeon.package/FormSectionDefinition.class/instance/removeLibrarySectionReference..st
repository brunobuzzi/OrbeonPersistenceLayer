library components
removeLibrarySectionReference: aFormLibraryComponentDefinition
	"Remove <aFormLibraryComponentDefinition> from library section referencing the receiver. See issue #347"

	libraryComponentReferences remove: aFormLibraryComponentDefinition.

	aFormLibraryComponentDefinition sectionDefinition: nil.