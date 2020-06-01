building streams
setStreamForDraftsSummary
	| draftsNodes |

	draftsNodes := xmlQuery descendentElementsNamed: 'drafts'.

	(draftsNodes notEmpty and: [((draftsNodes first attributeAt: 'for-never-saved-document') = 'true') and: [draftsNodes first contentString = 'only']])
	ifFalse: [^self].

	draftsReadStream := ReadStreamPortable on: self getAllDrafts