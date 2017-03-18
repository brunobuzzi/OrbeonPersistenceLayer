process xml
createLibrarySectionDefinitionNamed: sectionName repeatable: aBoolean basedOn: xmlSection with: anOrbeonFormReader
	"The receiver create a reference to a -Library Section- named <sectionName>"
		| section componentNode httpStringReference publishedComponent appName referencedSectionName |

	section := FormLibraryComponentDefinition name: sectionName definition: self.

	componentNode := xmlSection descendantNodesDetect: [:e | 'component:*' match: e name].

	httpStringReference := componentNode namespaceScope prefixMappingAt: 'component'.

	appName := (httpStringReference subStrings: '/') at: 7 ifAbsent: [LibraryReferenceException signal: 'The reference to the application is missing. There is an error in the reference''s string format'].

	publishedComponent := self getOrbeonApplicationClass formDefinitionNamed: 'library' in: appName.
	section publishedComponent: publishedComponent.

	publishedComponent ifNil: [LibraryReferenceException signal: 'The referenced Published Form does NOT exist !'].

	referencedSectionName := (componentNode name subStrings: ':') last.

	section sectionDefinition: (publishedComponent getSectionNamed: referencedSectionName).

	^section