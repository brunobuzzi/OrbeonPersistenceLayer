attachments
getAttachmentIdsFrom: anOrbeonFormDefinition
	"The receiver collect all attachment's id of the form definition <anOrbeonFormDefinition>"
	| ids modelNode formNode |

	modelNode := (xmlDocument findElementNamed: 'xf:model') ifNotNil: [:value | value] ifNil: [^#()].
	formNode := (modelNode findElementNamed: 'form') ifNotNil: [:value | value] ifNil: [^#()].
	ids := OrderedCollection new.
	"iterate over attachment fields #getAttachmentFields"
	anOrbeonFormDefinition getAttachmentFields do: [:each |
		(formNode findElementNamed: each name) 
		ifNotNil: [:attachNode | (self getValueFrom: attachNode) ifNotNil: [:value | ids add: value]].
	].
	"the file name format is: <definitionId>-<fileId>"
	^ids collect: [:each | | macIndex attachmentId |
			macIndex := each findString: 'mac='.
			macIndex ifNil: [^OrbeonInvalidXMLException signal: 'No "mac=" sentence in attachment value'].
			attachmentId := each copyFrom: macIndex + 4 to: each size.
			anOrbeonFormDefinition getId, '-', attachmentId]