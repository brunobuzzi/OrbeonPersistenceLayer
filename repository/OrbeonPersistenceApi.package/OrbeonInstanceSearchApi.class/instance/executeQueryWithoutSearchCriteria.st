queries
executeQueryWithoutSearchCriteria
	| drafts formsInRange stream instancesShift draftsSize draftsNodes |

	drafts :=  self getAllDrafts.
	draftsNodes := xmlDocument descendentElementsNamed: 'drafts'.

	(draftsNodes notEmpty and: [((draftsNodes first attributeAt: 'for-never-saved-document') = 'true') and: [draftsNodes first contentString = 'only']]) "drafts to display"
	ifTrue: [total := drafts size.
			^self resultCollection: (drafts select: [:each | each version = version]) ]. "only display draft of the selected version"

	formsInRange := OrderedCollection new.
	instancesShift := (self pageFrom = 1) ifTrue: [1] ifFalse: [self pageFrom - drafts size].
	draftsSize :=  (self pageFrom = 1) ifTrue: [drafts size] ifFalse: [0].

	stream := (application registryForFormNamed: lastFormDefinition formName ifNone: [nil]) getIteratorFor: user roles: userCredentials group: group version: version. "answer a specific iterator to go through instances"
	stream fromIndex: instancesShift;
				toIndex: (instancesShift - 1) + pageSize - draftsSize.

	formsInRange := stream getCollection.

	total := stream "formsInRange" size + drafts size.
	stream close.

	draftsNodes isEmpty 
	ifTrue: [^self resultCollection: ((self pageFrom = 1) ifTrue: [drafts, formsInRange] ifFalse: [formsInRange])].

	^self resultCollection: ((self pageFrom = 1) ifTrue: [drafts, formsInRange] ifFalse: [formsInRange])