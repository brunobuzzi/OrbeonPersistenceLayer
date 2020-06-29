other
moveToApplicationNamed: newAppName as: newFormName
	"The receiver relocate itself to new application named <newApplication> as new form named <newFormName>"

	^self registry 		
		move: self 
		toApplication: newAppName	 
		andForm: newFormName