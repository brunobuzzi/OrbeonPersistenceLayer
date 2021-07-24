other
newNamed: formName in: anOrbeonApplication
	"Answer a new instance of the receiver in OrbeonApplication named <app> with form named <formName>.
	If the OrbeonApplication does not exist --> a new one is created"

	^self new setApplication: anOrbeonApplication formName: formName