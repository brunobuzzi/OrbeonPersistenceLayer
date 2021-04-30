build definition attachments
createExternalFileObjectFor: anOrbeonFormDefinition field: aFormFieldDefinition node: xmlNode
	"Answer the orbeon external file object to be fileout for field <aFormFieldDefinition> from node <xmlNode> in definition <anOrbeonFormDefinition> "

	^self dataFormatVersion createExternalFileObjectFor: anOrbeonFormDefinition field: aFormFieldDefinition node: xmlNode on: self