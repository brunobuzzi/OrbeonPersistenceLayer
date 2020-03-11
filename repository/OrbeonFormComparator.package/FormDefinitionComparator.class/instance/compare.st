other
compare
	"The receiver compare <formOne> and <formTwo> and answer a collection with the differences"
	| difference sectionsOne sectionsTwo |

	difference := OrderedCollection new.

	sectionsOne := formOne sectionDefinitions. 
	sectionsTwo := formTwo sectionDefinitions.

	sectionsOne do: [:each | | sectionTwo | "compare sections one by one in formOne and formTwo"
		sectionTwo := sectionsTwo at: each name 
			ifAbsent: [difference add: (SectionDoesNotExist form: formOne object: each). nil].
		"here we compare the tree structure between the two forms"
		sectionTwo ifNotNil: [self compareSectionOf: each with: sectionTwo on: difference]]. 

	sectionsTwo do: [:each | | sectionOne | "compare sections one by one in formOne and formTwo"
		sectionOne := sectionsOne at: each name 
			ifAbsent: [difference add: (SectionDoesNotExist form: formTwo object: each). nil].]. 

	comparisionResult := difference