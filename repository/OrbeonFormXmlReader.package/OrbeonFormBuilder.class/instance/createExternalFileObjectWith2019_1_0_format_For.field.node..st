data format version
createExternalFileObjectWith2019_1_0_format_For: anOrbeonFormDefinition field: aFormFieldDefinition node: xmlNode
	"Answer the orbeon external file object to be fileout for field <aFormFieldDefinition> from node <xmlNode> in definition <anOrbeonFormDefinition> "
	| image annotation fileId |

	fileId := self getValueFrom: xmlNode.
	fileId ifNil: [^nil].
	fileId := (fileId subStrings: '=') last. 
	
	aFormFieldDefinition isAnnotationField
	ifFalse: [^OrbeonFileName newForFieldNamed: aFormFieldDefinition name fileName: (anOrbeonFormDefinition getId, '-', fileId)].

	image := ((self getValueFrom: (xmlNode elementAt: 'image')) subStrings: '=') last.
	annotation := ((self getValueFrom: (xmlNode elementAt: 'annotation')) subStrings: '=') last.

	^OrbeonAnnotationFileName 
			newForFieldNamed: aFormFieldDefinition name 
			imageFileName: (anOrbeonFormDefinition getId, '-',image)
			annotationFileName: (anOrbeonFormDefinition getId, '-',annotation)