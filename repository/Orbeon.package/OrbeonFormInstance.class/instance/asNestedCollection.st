other
asNestedCollection
	| visitor collection sectionMapping |

	collection := OrderedCollection new.
	sectionMapping := Dictionary new.
	visitor := OrbeonFormInstanceVisitor new.
	visitor sectionsDo: [:s |  | parentCollection |
		sectionMapping at: s put: (OrderedCollection new: 3).
		parentCollection := s parentSection ifNil: [collection add: (sectionMapping at: s)] ifNotNil: [:value | (sectionMapping at: value) add: (sectionMapping at: s)].
		parentCollection at: 1 put: s name.
		parentCollection at: 2 put: s fields.
		parentCollection at: 3 put: Dictionary new.
		s grids do: [:grid | | iterations |
			iterations := (parentCollection at: 3) at: grid name ifAbsentPut: Dictionary new.
			grid gridIterations keysAndValuesDo: [:index :iterationDictionary | iterations at: index put: iterationDictionary]. 
		].
	].
	visitor gridsDo: [:s :g | ]. 
	visitor fieldsDo: [:s :g :dict | ].

	visitor visitForm: self. 
	^collection