db import core
importFormDefinitionNamed: formDefinitionName version: version in: appName
	"The receiver import into Orbeon Application <anOrbeonApplication> a form named <formDefinitionName>.
	Does NOT import attachments."

	^self importFormDefinitionNamed: formDefinitionName version: version in: appName from: self getOldTimeStamp