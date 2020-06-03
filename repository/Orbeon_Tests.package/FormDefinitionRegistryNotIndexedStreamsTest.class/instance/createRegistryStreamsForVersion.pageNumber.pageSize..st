other
createRegistryStreamsForVersion: versionNumber pageNumber: pageNumber pageSize: pageSize

	registryStreams := FormDefinitionRegistryNotIndexedStreams 
								newOn: (self application registryForFormNamed: 'iterator' ifNone: [self assert: false])  
								xmlQuery: (XMLDOMParser parse: (self xmlQueryStringForPageNumber: pageNumber)).

	registryStreams 
		version: versionNumber;
		pageSize: pageSize;
		pageNumber: pageNumber;
		buildStreams.