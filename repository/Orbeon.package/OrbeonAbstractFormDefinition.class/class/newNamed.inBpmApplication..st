other
newNamed: form inBpmApplication: aBpmApplication
	"Answer a new instance of the receiver in OrbeonApplication named <app> with form named <form>.
	If the OrbeonApplication does not exist --> a new one is created"

	^self new setBpmApplication: aBpmApplication formName: form