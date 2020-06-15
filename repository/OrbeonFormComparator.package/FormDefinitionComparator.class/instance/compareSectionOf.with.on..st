other
compareSectionOf: aSectionDefinitionOne with: aSectionDefinitionTwo on: anOrderedCollection
	"The receiver recursively compare section <aSectionDefinitionOne> with section <aSectionDefinitionTwo> structures.
	The comparison also includes the fields of each section. Append differences to the argument <anOrderedCollection>"

	"comparing fields contained in sections <aSectionDefinitionOne> and <aSectionDefinitionTwo>"
	self compareNames: aSectionDefinitionOne getAllFieldNames with: aSectionDefinitionTwo getAllFieldNames on: anOrderedCollection.

	"comparing field types"
	self compareFieldTypesOf: aSectionDefinitionOne with: aSectionDefinitionTwo on: anOrderedCollection.

	"comparing section's grid"
	self compareGridsOf: aSectionDefinitionOne with: aSectionDefinitionTwo on: anOrderedCollection.

	"comparing the tree structure of the sections <aSectionDefinitionOne> and <aSectionDefinitionTwo>"
	"also comparing subsection in <subSectionTwo> not present in <aSectionDefinitionTwo>"
	aSectionDefinitionOne subSectionsDo: [:each | | subSectionTwo |
		subSectionTwo := aSectionDefinitionTwo getSubSectionNamed: each name 
									ifNone: [anOrderedCollection add: (SectionDoesNotExist form: aSectionDefinitionTwo formDefinition object: each). nil].

		subSectionTwo ifNotNil: [self compareSectionOf: each with: subSectionTwo on: anOrderedCollection]]. "recursive CALL"

	"comparing subsection in <aSectionDefinitionTwo> not present in <aSectionDefinitionOne>"
	aSectionDefinitionTwo subSectionsDo: [:each |
		aSectionDefinitionOne getSubSectionNamed: each name 
										ifNone: [anOrderedCollection add: (SectionDoesNotExist form: aSectionDefinitionTwo formDefinition object: each)]].

	^anOrderedCollection