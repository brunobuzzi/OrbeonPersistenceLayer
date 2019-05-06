other
printStructure
	| visitor stream |

	stream := PrintStream on: String new.
	stream nextPutAll: '<', self getApplicationName, '.', self getFormName,'>'.
	stream nextPutAll: String lf.
	visitor := OrbeonFormInstanceVisitor new.
	visitor sectionsDo: [:s |  
		1 to: s levelNumber do: [:idx |  stream nextPutAll: String tab].
		stream nextPutAll: ('[', s name, ']').
		stream nextPutAll: (' iteration(', s getIterationIndex printString, ')').
		stream nextPutAll: String lf.
	].
	visitor gridsDo: [:s :g | 
		1 to: (s levelNumber + 1) do: [:idx |  stream nextPutAll: String tab].
		stream nextPutAll: ('(', g name, ')').
		stream nextPutAll: String lf.	
	]. 
	visitor fieldsDo: [:s :g :dict | 
		g ifNotNil: [ "fields belong to <aFormGridInstance>. if <g> is <nil> then fields belong to <aNormalSectionInstance>"
			1 to: (s levelNumber + 2) do: [:idx |  stream nextPutAll: String tab].
			stream nextPutAll: 'iteration(', (g getIterationIndexOf: dict) printString, ')'.
			stream nextPutAll: String lf.
		].
		dict associationsDo: [:assoc | | fieldValue |
			1 to: (s levelNumber + 1) do: [:idx |  stream nextPutAll: String tab].
			g ifNotNil: [stream nextPutAll: (String tab, String tab)].
			fieldValue := assoc value isOctetString ifTrue:['"', assoc value, '"'] ifFalse: [assoc value printString].
			stream nextPutAll: (assoc key, ': ', fieldValue).
			stream nextPutAll: String lf.
		].
	].
	visitor visitForm: self. 
	^stream contents