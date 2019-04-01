other
printVisitorPath
	| visitor stream |

	stream := PrintStream on: String new.
	stream nextPutAll: '<', self getApplicationName, '.', self getFormName,'>'.
	stream nextPutAll: String lf.
	visitor := OrbeonFormDefinitionVisitor new.
	visitor sectionsDo: [:s |  
		1 to: s levelNumber do: [:idx |  stream nextPutAll: String tab].
		stream nextPutAll: ('[', s name, ']').
		stream nextPutAll: (s isRepeatable ifTrue: ['(R)'] ifFalse: ['(N)']).
		stream nextPutAll: String lf.
	].
	visitor gridsDo: [:s :g | 
		1 to: (s levelNumber + 1) do: [:idx |  stream nextPutAll: String tab].
		stream nextPutAll: ('(', g name, ')').
		stream nextPutAll: String lf.	
	]. 
	visitor fieldsDo: [:s :g :fieldDefinition | 
		1 to: (s levelNumber + 1) do: [:idx |  stream nextPutAll: String tab].
		g ifNotNil: [stream nextPutAll: String tab].
		stream nextPutAll: (fieldDefinition name, ', ', fieldDefinition type).
		stream nextPutAll: String lf.
	].
	visitor visitForm: self. 
	^stream contents