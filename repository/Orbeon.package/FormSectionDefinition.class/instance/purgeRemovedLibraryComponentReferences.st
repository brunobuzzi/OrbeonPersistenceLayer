library components
purgeRemovedLibraryComponentReferences
	"The receiver may contain references to remove forms (and removed sections) in <libraryComponentReferences>.
	This method purge those library sections"

	(Array with: libraryComponentReferences) do: [:libComponent | 
		libComponent isInRegistry ifFalse: [libraryComponentReferences remove: libComponent].
	].