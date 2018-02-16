other
doIt
	| savedDefinitions |

	savedDefinitions := self getOrbeonApplicationClass getAllSavedDefinitions.
	searchTotal := savedDefinitions size.

	self applyQueryToFormDefinitions: savedDefinitions.