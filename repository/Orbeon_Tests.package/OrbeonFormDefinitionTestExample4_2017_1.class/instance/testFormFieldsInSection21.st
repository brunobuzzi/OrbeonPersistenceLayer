other
testFormFieldsInSection21
	| section2 section21 |

	section2 := form getSectionNamed: 'section-14'.
	section21 := section2 subSectionsLast.
	"fields of this section only and fields in grids of this section - does NOT includes subsections"
	self assert: (section21 getAllFieldDefinitions size = 5).

	self assert: (section21 getAllFieldDefinitions anySatisfy: [:e | e name = 'formatedText']).
	self assert: (section21 getAllFieldDefinitions anySatisfy: [:e | e name = 'fileAttachment']).
	self assert: (section21 getAllFieldDefinitions anySatisfy: [:e | e name = 'imageAttachment']).
	self assert: (section21 getAllFieldDefinitions anySatisfy: [:e | e name = 'imageAnnotation']).
	self assert: (section21 getAllFieldDefinitions anySatisfy: [:e | e name = 'autocomplete']).

	self assert: ((section21 getFieldNamed: 'formatedText') type = 'xf:string').
	self assert: ((section21 getFieldNamed: 'fileAttachment') type = 'xf:anyURI').
	self assert: ((section21 getFieldNamed: 'imageAttachment') type = 'xf:anyURI').
	self assert: ((section21 getFieldNamed: 'imageAnnotation') type = 'xf:string').
	self assert: ((section21 getFieldNamed: 'autocomplete') type = 'xf:string').