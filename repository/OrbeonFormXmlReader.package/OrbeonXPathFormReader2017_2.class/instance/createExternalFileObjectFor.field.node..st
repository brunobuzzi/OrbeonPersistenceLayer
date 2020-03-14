attachments
createExternalFileObjectFor: anOrbeonFormDefinition field: aFormFieldDefinition node: xmlNode
	"Answer the orbeon external file object to be fileout for field <aFormFieldDefinition> from node <xmlNode> in definition <anOrbeonFormDefinition> "
	| image annotation fileId |

	fileId := self getValueFrom: xmlNode.
	fileId ifNil: [^nil].
	fileId := (fileId subStrings: '/') last allButLast: 4. "remove '.bin' extesion from file name"
	
	aFormFieldDefinition isAnnotationField
	ifFalse: [^OrbeonFileName newForFieldNamed: aFormFieldDefinition name fileName: (anOrbeonFormDefinition getId, '-', fileId)].

	image := ((self getValueFrom: (xmlNode elementAt: 'image')) subStrings: 'mac=') last.
	annotation := ((self getValueFrom: (xmlNode elementAt: 'annotation')) subStrings: 'mac=') last.

	^OrbeonAnnotationFileName 
			newForFieldNamed: aFormFieldDefinition name 
			imageFileName: image
			annotationFileName: annotation