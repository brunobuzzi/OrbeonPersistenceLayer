process xml
createLibrarySectionDefinitionNamed: sectionName repeatable: aBoolean basedOn: xmlSection with: anOrbeonFormReader
	"The receiver create a reference to a -Library Section- named <sectionName>"
		| section componentNode httpStringReference publishedComponent appName referencedSectionName referencedSection |

	section := FormLibraryComponentDefinition newNamed: sectionName definition: self.

	componentNode := xmlSection descendantNodesDetect: [:e | 'component:*' match: e name].

	httpStringReference := componentNode namespaceScope prefixMappingAt: 'component'.

	appName := (httpStringReference subStrings: '/') at: 7 ifAbsent: [LibraryReferenceException signal: 'The reference to the application is missing. There is an error in the reference''s string format'].

	publishedComponent := self getOrbeonApplicationClass formDefinitionNamed: 'library' in: appName.
	section publishedComponent: publishedComponent.

	publishedComponent ifNil: [LibraryReferenceException signal: 'The referenced Published Form does NOT exist !'].

	referencedSectionName := (componentNode name subStrings: ':') last.
	referencedSection := publishedComponent getSectionNamed: referencedSectionName.

	referencedSection getAllFieldDefinitions do: [:each | labels at: each name put: each label]. "set the labels of the referenced Section"

	section sectionDefinition: referencedSection.
	referencedSection libraryComponent: section.

	^section