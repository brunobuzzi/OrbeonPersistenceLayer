other
testFields
	| section1 |

	section1 := form sectionDefinitions at: 'section-1'.

	"fields of this section only and fields in grids of this section - does NOT includes subsections"
	self assert: (section1 getAllFieldDefinitions size = 8).

	self assert: (section1 getAllFieldDefinitions anySatisfy: [:e | e name = 'name']).
	self assert: (section1 getAllFieldDefinitions anySatisfy: [:e | e name = 'industry']).
	self assert: (section1 getAllFieldDefinitions anySatisfy: [:e | e name = 'invoiceTotal']).
	self assert: (section1 getAllFieldDefinitions anySatisfy: [:e | e name = 'associatedCost']).
	self assert: (section1 getAllFieldDefinitions anySatisfy: [:e | e name = 'taxes']).
	self assert: (section1 getAllFieldDefinitions anySatisfy: [:e | e name = 'confirmed']).
	self assert: (section1 getAllFieldDefinitions anySatisfy: [:e | e name = 'paymentDate']).
	self assert: (section1 getAllFieldDefinitions anySatisfy: [:e | e name = 'invoiceType']).

	self assert: ((section1 getFieldNamed: 'name') type = 'xf:string').
	self assert: ((section1 getFieldNamed: 'industry') type = 'xf:string').
	self assert: ((section1 getFieldNamed: 'invoiceTotal') type = 'xf:decimal').
	self assert: ((section1 getFieldNamed: 'associatedCost') type = 'xf:decimal').
	self assert: ((section1 getFieldNamed: 'taxes') type = 'xf:decimal').
	self assert: ((section1 getFieldNamed: 'confirmed') type = 'xf:boolean').
	self assert: ((section1 getFieldNamed: 'paymentDate') type = 'xf:date').
	self assert: ((section1 getFieldNamed: 'invoiceType') type = 'xf:string').