other
executeQuerySearchFormWithDraft
	| draftNode draftId |

	draftNode := xmlSearchDefinitionDocument allElementsNamed: 'drafts'.

	draftNode isEmpty ifTrue: [^resultCollection := #()].

	draftNode := draftNode last.
	"if there is an id <for-document-id> --> Orbeon is searching for a draft, if NOT --> is a Summary of drafts (there are more than one draft stored --> we are going to show all of them)"
	draftId := draftNode attributeAt: 'for-document-id' ifAbsent: [^self executeQueryWithoutSearchCriteria].

	^resultCollection := (application getAnyDraftWithId: draftId of: lastFormDefinition formName)
		ifNil: [#()]
		ifNotNil: [:value | OrderedCollection with: value]