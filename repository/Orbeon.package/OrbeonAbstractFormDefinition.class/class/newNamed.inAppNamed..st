other
newNamed: form inAppNamed: app
	"Answer a new instance of the receiver in OrbeonApplication named <app> with form named <form>.
	If the OrbeonApplication does not exist --> a new one is created"

	^super new initialize
		setApplication: app;
		formName: form;
		yourself