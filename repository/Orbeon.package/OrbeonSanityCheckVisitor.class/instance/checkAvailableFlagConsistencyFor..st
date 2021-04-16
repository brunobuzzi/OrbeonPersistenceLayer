sanity checks
checkAvailableFlagConsistencyFor: anOrbeonPublishedFormDefinition
	| publishedReader savedReader |

	publishedReader := anOrbeonPublishedFormDefinition newFormBuilder.
	savedReader := anOrbeonPublishedFormDefinition definition newFormBuilder.

	(publishedReader isAvailable =  savedReader isAvailable)
	ifFalse: [OrbeonSanityCheckException signal: 'Inconsistency in <available> flag between Saved Definition and Published Definition'].

	(anOrbeonPublishedFormDefinition isAvailable = anOrbeonPublishedFormDefinition definition isAvailable)
	ifFalse: [OrbeonSanityCheckException signal: 'Inconsistency in <available> flag between Saved Definition and Published Definition'].