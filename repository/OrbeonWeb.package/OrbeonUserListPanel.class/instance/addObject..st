other
addObject: anObject
	"The paramenter <anObject> perform the <addSelector> of the receiver with the <model>.
	The <addSelector> method should link <anObject> with <model> is some convinience way"
	| selectedObject |
"
	selectedObject := self chooseFrom: (PersonaUAIP cache collect: [:e | e name]) caption: 'Seleccione Persona' onAnswer: [:each | each].
mainPanel halt.
	^model perform: addSelector with: selectedObject"