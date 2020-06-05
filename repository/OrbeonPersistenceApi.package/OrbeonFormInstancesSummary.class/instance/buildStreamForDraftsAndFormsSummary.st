streams building
buildStreamForDraftsAndFormsSummary
	| drafts draftsShift pageToShift instances |

	drafts := self getAllDrafts asSortedCollection: [:a :b | b modifiedTime <= a modifiedTime].

	draftsShift := self pageFrom - drafts size.
	"the summary is only drafts or a combination of drafts and instances"
	(draftsShift <= 0) ifTrue: [summaryStream fetchAllDraftsButFirst: self pageFrom].

	pageToShift := self pageTo - drafts size "+ 1".
	(draftsShift >= pageToShift) ifTrue: [^self].

	instances := (formDefinitionRegistry instancesSetOfVersion: version) "asSortedCollection: [:a :b | b modifiedTime <= a modifiedTime]".

	"instancesCollection := self selectFormWithPermissions: instancesCollection."

	totalFormsSize := totalFormsSize + instances size.

	summaryStream fetchFormsInstancesOn: instances from: draftsShift to: pageToShift