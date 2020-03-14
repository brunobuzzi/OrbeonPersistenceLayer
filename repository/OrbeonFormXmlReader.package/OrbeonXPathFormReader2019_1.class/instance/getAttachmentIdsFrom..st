attachments
getAttachmentIdsFrom: anOrbeonFormDefinition
	"The receiver collect all attachment's id of the form definition <anOrbeonFormDefinition>.
	Each attachment has an associated file. 
	Empty Attachment field definition (without file in the Form Definition) are NOT listed in this method"
	| ids nativeOrbeonIds nodes formNode |

	nodes := xmlDocument xPath: self defaultOrbeonXpathVersion xfInstanceFormXpath.
	(nodes size = 1) ifFalse: [^OrbeonInvalidXMLException signal: 'Only one [form] node is allowed'].
	formNode  := nodes last.
	nativeOrbeonIds := Dictionary new.
	ids := Dictionary new.
	"iterate over attachment fields #getAttachmentFields"

	anOrbeonFormDefinition getAttachmentFields do: [:each |
		(formNode xPath: './/',each name) 
		ifNotEmpty: [:collection | | attachNode |
			attachNode := collection last.
			(self getValueFrom: attachNode) 
			ifNotNil: [:value | | newValue |
				newValue := (value subStrings: '/') last allButLast: 4.
				ids at: each name put: (OrbeonFileName newForFieldNamed: each name fileName: (anOrbeonFormDefinition getId, '-', newValue)).
			]
		].
	].
	"the file name format is: <definitionId>-<fileId>"

	^ids