other
doIt

	summary := OrbeonFormInstancesSummary 
								newWith: lastFormDefinition registry
								version: version
								user: user 
								group: group 
								credentials: userCredentials
								pageSize: pageSize 
								pageNumber: pageNumber 
								xmlQuery: xmlDocument.

	summary buildStreams.

	^self generateXmlAnswer