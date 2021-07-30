other
associateSavedAndPublishedForms

	definition := application getLatestSavedDefinition: formName ifNone: [^ImproperOrbeonOperationException signal: 'The Published form must have an associated Saved form named [', formName, ']'].
	definition definition: self.