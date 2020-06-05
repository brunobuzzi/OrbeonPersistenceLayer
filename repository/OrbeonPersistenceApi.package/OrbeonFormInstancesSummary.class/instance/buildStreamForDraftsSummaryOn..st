streams set
buildStreamForDraftsSummaryOn: collectionOfOrbeonDrafts
	| draftsCollection |

	totalFormsSize := totalFormsSize + collectionOfOrbeonDrafts size.

	draftsCollection := self selectFormWithPermissions: collectionOfOrbeonDrafts.

	draftsReadStream := ReadStreamPortable on: draftsCollection.