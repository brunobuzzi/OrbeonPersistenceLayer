queries
executeQueryWithoutSearchCriteria
	| drafts formsInRange stream instancesShift draftsSize draftsNodes |

	drafts :=  self getAllDrafts.
	draftsNodes := xmlSearchDefinitionDocument descendentElementsNamed: 'drafts'.

	(draftsNodes notEmpty and: [((draftsNodes first attributeAt: 'for-never-saved-document') = 'true') and: [draftsNodes first contentString = 'only']]) "drafts to display"
	ifTrue: [total := drafts size.
			^resultCollection := drafts].

	formsInRange := OrderedCollection new.
	instancesShift := (self pageFrom = 1) ifTrue: [1] ifFalse: [self pageFrom - drafts size].
	draftsSize :=  (self pageFrom = 1) ifTrue: [drafts size] ifFalse: [0].

	stream := (application registryForFormNamed: formName ifNone: [nil]) getIteratorFor: user group: group. "answer a specific iterator to go through instances"
	stream fromIndex: instancesShift - 1;
				toIndex: (instancesShift - 1) + pageSize - draftsSize.

	formsInRange := stream getCollection.

	total := stream "formsInRange" size + drafts size.
	stream close.

	draftsNodes isEmpty 
	ifTrue: [^resultCollection :=  (self pageFrom = 1) ifTrue: [drafts, formsInRange] ifFalse: [formsInRange]].

	^resultCollection :=  (self pageFrom = 1) ifTrue: [drafts, formsInRange] ifFalse: [formsInRange]