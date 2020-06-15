other
testFormFieldsInSection7
	| section1 section7 |

	section1 := form getSectionNamed: 'section-1'.
	section7 := section1 subSectionsDetect: [:each | each name = 'section-7'] ifNone: [self assert: false].

	"fields of this section only and fields in grids of this section - does NOT includes subsections"
	self assert: (section7 getAllFieldDefinitions size = 5).

	self assert: (section7 getAllFieldDefinitions anySatisfy: [:e | e name = 'control-8']).
	self assert: (section7 getAllFieldDefinitions anySatisfy: [:e | e name = 'mobile']).
	self assert: (section7 getAllFieldDefinitions anySatisfy: [:e | e name = 'quantity']).
	self assert: (section7 getAllFieldDefinitions anySatisfy: [:e | e name = 'currency']).

	self assert: ((section7 getFieldNamed: 'control-8') type = 'xf:string').
	self assert: ((section7 getFieldNamed: 'mobile') type = 'xf:string').
	"for these three field #getFieldNamed: answer nil because is defined inside a grid and not directly in the section"
	self assert: ((section7 getAllFieldDefinitions detect: [:e | e name = 'moneySubject']) type = 'xf:string').
	self assert: ((section7 getAllFieldDefinitions detect: [:e | e name = 'quantity']) type = 'xf:decimal').
	self assert: ((section7 getAllFieldDefinitions detect: [:e | e name = 'currency']) type = 'xf:decimal').