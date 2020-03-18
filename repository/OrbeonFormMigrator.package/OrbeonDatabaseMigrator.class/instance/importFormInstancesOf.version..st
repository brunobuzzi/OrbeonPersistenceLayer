db import core
importFormInstancesOf: anOrbeonFormDefinition version: version
	"The receiver import into Orbeon Application <anOrbeonApplication> a form named <formDefinitionName>.
	Does NOT import attachments."

	^self importFormInstancesOf: anOrbeonFormDefinition version: version from: self getOldTimeStamp