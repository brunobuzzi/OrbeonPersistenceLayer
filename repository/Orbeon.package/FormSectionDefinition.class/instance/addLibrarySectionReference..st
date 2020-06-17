library components
addLibrarySectionReference: aFormLibraryComponentDefinition
	"Add <aFormLibraryComponentDefinition> as new library section referencing the receiver. See issue #347"

	"purge others unreacheable <FormLibraryComponentDefinition>. 
	This is sent first if NOT it will remove the recently added argument <aFormLibraryComponentDefinition>"
	self purgeRemovedLibraryComponentReferences.

	libraryComponentReferences add: aFormLibraryComponentDefinition.

	aFormLibraryComponentDefinition sectionDefinition: self.