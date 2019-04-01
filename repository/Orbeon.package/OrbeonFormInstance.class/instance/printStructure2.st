other
printStructure2
	| visitor stream |

	stream := PrintStream on: String new.
	visitor := OrbeonFormInstanceVisitor new.
	visitor sectionsDo: [:s |  
		1 to: s levelNumber do: [:idx |  stream nextPutAll: String tab].
		stream nextPutAll: ('[', s name, ']').
		stream nextPutAll: (' (iteration(', s getIterationIndex printString, ')').
		stream nextPutAll: String lf.
	].
	visitor gridsDo: [:s :g | 
		1 to: (s levelNumber + 1) do: [:idx |  stream nextPutAll: String tab].
		stream nextPutAll: ('(', g name, ')').
		stream nextPutAll: String lf.	
	]. 
	visitor fieldsDo: [:s :g :dict | 
		dict associationsDo: [:assoc | 
			1 to: (s levelNumber + 1) do: [:idx |  stream nextPutAll: String tab].
			g ifNotNil: [stream nextPutAll: String tab].
			stream nextPutAll: (assoc key, ': ', assoc value).
			stream nextPutAll: String lf.
		].
	].
	visitor visitForm: self. 
	^stream contents