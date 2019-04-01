other
asNestedCollection
	| visitor collection sectionMapping |

	collection := OrderedCollection new.
	sectionMapping := Dictionary new.
	visitor := OrbeonFormInstanceVisitor new.
	visitor sectionsDo: [:s |  | parentCollection |
		
		

	].
	visitor gridsDo: [:s :g | 

	]. 
	visitor fieldsDo: [:s :g :dict | 

	].

	visitor visitForm: self. 
	^collection