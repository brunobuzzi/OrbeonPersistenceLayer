attachments
getAttachmentIdsFrom: anOrbeonFormDefinition
	"The receiver collect all attachment's id of the form definition <anOrbeonFormDefinition>.
	Each attachment has an associated file. 
	Empty Attachment field definition (without file in the Form Definition) are NOT listed in this method"
	| ids nodes formNode |

	nodes := xmlDocument xPath: self defaultOrbeonDataFormatVersion xfInstanceFormXpath.
	(nodes size = 1) ifFalse: [^OrbeonInvalidXMLException signal: 'Only one [form] node is allowed'].
	formNode  := nodes last.
	ids := Dictionary new.
	"iterate over attachment fields #getAttachmentFields"

	anOrbeonFormDefinition getAttachmentFields do: [:each |
		(formNode xPath: './/',each name) 
		ifNotEmpty: [:collection | | attachNode |
			attachNode := collection last.
			(self createExternalFileObjectFor: anOrbeonFormDefinition field: each node: attachNode)
			ifNotNil: [:value | ids at: each name put: value].
		].
	].

	^ids