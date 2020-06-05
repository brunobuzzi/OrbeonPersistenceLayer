other
createSummaryFor: aFormDefinitionRegistry version: versionNumber credentials: credentials pageNumber: pageNumber pageSize: pageSize

	summary := OrbeonFormInstancesSummary 
								newWith: aFormDefinitionRegistry
								version: versionNumber
								user: nil 
								group: nil 
								credentials: credentials
								pageSize: pageSize 
								pageNumber: pageNumber 
								xmlQuery: (XMLDOMParser parse: (self xmlQueryStringForPageNumber: pageNumber)).

	summary buildStreams