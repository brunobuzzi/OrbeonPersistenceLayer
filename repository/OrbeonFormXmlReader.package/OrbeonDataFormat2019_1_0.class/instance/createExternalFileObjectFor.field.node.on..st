double dispatch
createExternalFileObjectFor: anOrbeonFormDefinition field: aFormFieldDefinition node: xmlNode on: anOrbeonFormBuilder
	"Answer the orbeon external file object to be fileout for field <aFormFieldDefinition> from node <xmlNode> in definition <anOrbeonFormDefinition> "

	^anOrbeonFormBuilder createExternalFileObjectWith2019_1_0_format_For: anOrbeonFormDefinition field: aFormFieldDefinition node: xmlNode