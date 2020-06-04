streams set
buildStreamForDraftsSummaryOn: collectionOfOrbeonDrafts
	| draftsCollection |

	numberOfForms := numberOfForms + collectionOfOrbeonDrafts size.

	draftsCollection := self selectFormWithPermissions: collectionOfOrbeonDrafts.

	draftsReadStream := ReadStreamPortable on: draftsCollection.