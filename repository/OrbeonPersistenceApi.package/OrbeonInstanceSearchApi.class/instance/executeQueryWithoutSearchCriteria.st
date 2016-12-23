queries
executeQueryWithoutSearchCriteria
	| drafts formsInRange stream instancesShift draftsSize draftsNodes |

	drafts :=  self getAllDrafts reject: [:each | each isDeleted].
	draftsNodes := xmlSearchDefinitionDocument descendentElementsNamed: 'drafts'.

	(draftsNodes notEmpty and: [((draftsNodes first attributeAt: 'for-never-saved-document') = 'true') and: [draftsNodes first contentString = 'only']]) "drafts to display"
	ifTrue: [total := drafts size.
			^resultCollection := drafts].

	formsInRange := OrderedCollection new.	
	"stream := ReadStream on: self getAllKeys."
	stream := FormDefinitionRegistryIterator on: (application registryForFormNamed: formName ifNone: [nil]).
	instancesShift := (self pageFrom = 1) ifTrue: [1] ifFalse: [self pageFrom - drafts size].
	draftsSize :=  (self pageFrom = 1) ifTrue: [drafts size] ifFalse: [0].

	stream skip: instancesShift - 1.
	[stream atEnd not and:[(formsInRange size + draftsSize) < pageSize]] whileTrue: [ | form |
		"form := application getAnyInstanceWithId: stream next of: formName."
		form := stream getCurrentObject.
		(form notNil and: [(self canDisplayForm: form) and: [form isDeleted not]]) 
		ifTrue: [formsInRange add: form].
		stream next.
	].

	total := stream size + drafts size.
	stream close.

	draftsNodes isEmpty 
	ifTrue: [^resultCollection :=  (self pageFrom = 1) ifTrue: [drafts, formsInRange] ifFalse: [formsInRange]].

	^resultCollection :=  (self pageFrom = 1) ifTrue: [drafts, formsInRange] ifFalse: [formsInRange]