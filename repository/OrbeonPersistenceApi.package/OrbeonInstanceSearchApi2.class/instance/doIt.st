other
doIt

	streamsHandler := FormDefinitionRegistryNotIndexedStreams newOn: lastFormDefinition registry xmlQuery: xmlDocument.

	streamsHandler 
		version: version;
		pageSize: pageSize;
		pageNumber: pageNumber;
		user: user;
		group: group;
		buildStreams.

	^self generateXmlAnswer