query attachments
getInstanceDefinitionUsedAttachmentIDs
	"Answer a dictionary of all used attachment's ids. Where the key is <app.formName> and the value is the actual collection"
	| allAttachmentIds |

	allAttachmentIds := Dictionary new.

	self getOrbeonApplicationCache do: [:eachApp | 
		eachApp definitionRegistry keysAndValuesDo: [:formName :registry |

			registry savedDefinitions do: [:eachInstDef | 
				allAttachmentIds at: (eachInstDef getApplicationName, '.', eachInstDef formName) 
					ifAbsent: [allAttachmentIds at: (eachApp applicationName, '.', eachInstDef formName) 
															put: (OrderedCollection withAll: eachInstDef attachments)]
					ifPresent: [:collection | collection addAll: eachInstDef attachments].
			].
		].
	].

	^allAttachmentIds