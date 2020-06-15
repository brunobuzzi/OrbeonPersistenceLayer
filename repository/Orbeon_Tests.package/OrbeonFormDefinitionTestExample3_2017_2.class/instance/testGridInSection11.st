other
testGridInSection11
	| section1 section11 |

	section1 := form sectionDefinitions at: 'section-1'.
	section11 := section1 subSectionsLast.

	"fields of this section only and fields in grids of this section - does NOT includes subsections"
	self assert: (section11 getAllFieldDefinitions size = 5).

	self assert: (section11 getAllFieldDefinitions anySatisfy: [:e | e name = 'control-8']).
	self assert: (section11 getAllFieldDefinitions anySatisfy: [:e | e name = 'mobile']).
	self assert: (section11 getAllFieldDefinitions anySatisfy: [:e | e name = 'moneySubject']).
	self assert: (section11 getAllFieldDefinitions anySatisfy: [:e | e name = 'quantity']).
	self assert: (section11 getAllFieldDefinitions anySatisfy: [:e | e name = 'currency']).

	self assert: ((section11 getFieldNamed: 'control-8') type = 'xf:string').
	self assert: ((section11 getFieldNamed: 'mobile') type = 'xf:string').