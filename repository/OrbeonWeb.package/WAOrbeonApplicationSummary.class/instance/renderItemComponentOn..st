main components
renderItemComponentOn: html

	selectedFormInstance := nil.
	selectedLateralItem ifNil: [^self].

	self isClassSide 
	ifTrue: [self renderFormDefinitionComponentOn: html]
	ifFalse: [self renderFormInstanceComponentOn: html].