other
initializeTabs

	tabs := Dictionary new
		at: 'Publicados' put: (WAOrbeonPublishedSummary parent: self);
		at: 'En Edición' put: (WAOrbeonInEditionSummary parent: self);
		at: 'En Desarrollo' put: (WAOrbeonInCreationSummary parent: self);
		yourself.

	selectedTab := Array with: 'Publicados' with: (tabs at: 'Publicados').