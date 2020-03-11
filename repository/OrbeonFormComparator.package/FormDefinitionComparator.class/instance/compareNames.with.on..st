other
compareNames: formOneNames with: formTwoNames on: anOrderedCollection
	"Compares the names contained in <formOneNames> with the names in <formTwoNames>.
	If a difference is found then store it in <anOrderedCollection> using the class <difClass> to create the difference object"

	(formOneNames difference: formTwoNames) do: [:each | anOrderedCollection add: (FieldDoesNotExist form: formTwo object: each)].

	(formTwoNames difference: formOneNames) do: [:each | anOrderedCollection add: (FieldDoesNotExist form: formOne object: each)].
	
	^anOrderedCollection