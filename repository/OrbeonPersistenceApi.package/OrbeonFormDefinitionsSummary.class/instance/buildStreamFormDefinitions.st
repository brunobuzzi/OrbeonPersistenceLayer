streams building
buildStreamFormDefinitions
	| allSavedDefinitions | 

	allSavedDefinitions := self systemRoot getAllSavedDefinitions.

	summaryStream fetchFormDefinitionsOn: allSavedDefinitions from: self pageFrom to: self pageTo