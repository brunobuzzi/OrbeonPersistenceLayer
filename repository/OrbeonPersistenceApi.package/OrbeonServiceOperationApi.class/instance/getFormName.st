metadata
getFormName

	formName ifNil: [formName := formReader getFormName].

	^formName