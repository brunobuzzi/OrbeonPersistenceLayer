other
newNamed: form inBpmAppNamed: app
	"Answer a new instance of the receiver in OrbeonApplication named <app> with form named <form>.
	If the OrbeonApplication does not exist --> a new one is created"

	^super new initialize
		setBpmApplication: app;
		formName: form;
		yourself