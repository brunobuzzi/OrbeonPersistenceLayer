streams set
buildStreamForDraftsSummaryOn: collectionOfOrbeonDrafts

	numberOfForms := numberOfForms + collectionOfOrbeonDrafts size.
	draftsReadStream := ReadStreamPortable on: collectionOfOrbeonDrafts.