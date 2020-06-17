process xml
purgeLibraryComponentsDefinitions
	"The receiver is re-generating <FormSectionDefinition> all sections. All library components must be removed from the original component (issue #347)"

	(self getAllSections select: [:each | each isLibraryComponent]) do: [:section | section removeFromOriginalLibrarySection]