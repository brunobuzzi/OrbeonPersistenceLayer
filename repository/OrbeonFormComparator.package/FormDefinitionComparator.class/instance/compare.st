other
compare
	"The receiver compare <formOne> and <formTwo> and answer a collection with the differences"
	| difference |

	difference := OrderedCollection new.

	formOne sectionDefinitionsDo: [:each | | sectionTwo | "compare sections one by one in formOne and formTwo"
		sectionTwo := formTwo getSectionNamed: each name ifAbsent: [difference add: (SectionDoesNotExist form: formOne object: each). nil].
		"here we compare the tree structure between the two forms"
		sectionTwo ifNotNil: [self compareSectionOf: each with: sectionTwo on: difference]]. 

	formTwo sectionDefinitionsDo: [:each | | sectionOne | "compare sections one by one in formOne and formTwo"
		sectionOne := formOne getSectionNamed: each name ifAbsent: [difference add: (SectionDoesNotExist form: formTwo object: each). nil].]. 

	comparisionResult := difference