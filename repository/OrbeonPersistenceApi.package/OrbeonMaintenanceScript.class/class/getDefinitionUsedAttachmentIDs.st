query attachments
getDefinitionUsedAttachmentIDs
	"Answer a dictionary of all used attachment's ids. Where the key is <app.formName> and the value is the actual collection"
	| allAttachmentIds |

	allAttachmentIds := Dictionary new.

	self getOrbeonApplicationCache do: [:eachApp | 
		eachApp definitionRegistry keysAndValuesDo: [:formName :registry |

			registry currentVersionsDo: [:eachDef | 
				allAttachmentIds at: (eachApp applicationName, '.', eachDef formName) 
					ifAbsent: [allAttachmentIds at: (eachApp applicationName, '.', eachDef formName) 
															put: (OrderedCollection withAll: eachDef attachments)]
					ifPresent: [:collection | collection addAll: eachDef attachments].
			].
			registry oldVersionsDo: [:eachDef | 
				allAttachmentIds at: (eachApp applicationName, '.', eachDef formName) 
					ifAbsent: [allAttachmentIds at: (eachApp applicationName, '.', eachDef formName) 
															put: (OrderedCollection withAll: eachDef attachments)]
					ifPresent: [:collection | collection addAll: eachDef attachments].
			].
		].
	].

	^allAttachmentIds