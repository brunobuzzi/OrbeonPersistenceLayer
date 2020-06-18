library components
addLibrarySectionReference: aFormLibraryComponentDefinition
	"Add <aFormLibraryComponentDefinition> as new library section referencing the receiver. See issue #347 and purge others unreacheable <FormLibraryComponentDefinition>. 
	The purge is done first if NOT it will remove the recently added argument <aFormLibraryComponentDefinition>.
	Because the parent form definition <formDefinition> is not yet published"

	self purgeRemovedLibraryComponentReferences.

	libraryComponentReferences add: aFormLibraryComponentDefinition.

	aFormLibraryComponentDefinition sectionDefinition: self.