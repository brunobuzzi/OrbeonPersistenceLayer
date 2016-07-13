Updating
isValid: newValue

   "Modify the value of the instance variable 'isValid'."
	newValue isString ifTrue: [^isValid := self evaluate: newValue].
 
	isValid := newValue