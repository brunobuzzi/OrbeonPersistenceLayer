other
createSummaryForVersion: versionNumber credentials: credentials pageNumber: pageNumber pageSize: pageSize

	summary := OrbeonFormInstancesSummary 
						newWith: self application
						definition: (self application definitionNamed: 'iterator' ifNone: [self assert: false])
						version: versionNumber 
						user: nil 
						group: nil 
						credentials: credentials 
						pageSize: pageSize 
						pageNumber: pageNumber 
						xmlQuery: (XMLDOMParser parse: (self xmlQueryStringForPageNumber: pageNumber)).

	summary buildStreams