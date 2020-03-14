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
			(self getValueFrom: attachNode) ifNotNil: [:value | nativeOrbeonIds at: each name put: value]]
	].
	"the file name format is: <definitionId>-<fileId>"
	nativeOrbeonIds keysAndValuesDo: [:key :value |  | macIndex attachmentId |
		macIndex := value findString: 'mac='.
		(macIndex = 0) ifTrue: [^OrbeonInvalidXMLException signal: 'No "mac=" sentence in attachment value'].
		attachmentId := value copyFrom: macIndex + 4 to: value size.
		ids at: key put: (OrbeonFileName newForFieldNamed: key fileName: (anOrbeonFormDefinition getId, '-', attachmentId))].

	^ids