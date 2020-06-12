sanity checks
checkAvailableFlagConsistencyFor: anOrbeonPublishedFormDefinition
	| publishedReader savedReader |

	publishedReader := anOrbeonPublishedFormDefinition newFormReader.
	savedReader := anOrbeonPublishedFormDefinition definition newFormReader.

	(publishedReader isAvailable =  savedReader isAvailable)
	ifFalse: [OrbeonSanityCheckException signal: 'Inconsistency in <available> flag between Saved Definition and Published Definition'].

	(anOrbeonPublishedFormDefinition isAvailable = anOrbeonPublishedFormDefinition definition isAvailable)
	ifFalse: [OrbeonSanityCheckException signal: 'Inconsistency in <available> flag between Saved Definition and Published Definition'].