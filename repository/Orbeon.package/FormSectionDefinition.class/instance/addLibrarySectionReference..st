library components
addLibrarySectionReference: aFormLibraryComponentDefinition
	"Add <aFormLibraryComponentDefinition> as new library section referencing the receiver. See issue #347"

	libraryComponentReferences add: aFormLibraryComponentDefinition.

	aFormLibraryComponentDefinition sectionDefinition: self.

	self purgeRemovedLibraryComponentReferences.