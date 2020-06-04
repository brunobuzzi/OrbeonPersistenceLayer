other
doIt

	streamsHandler := FormDefinitionRegistryNotIndexedStreams newOn: lastFormDefinition registry version: version xmlQuery: xmlDocument.

	streamsHandler 
		pageSize: pageSize;
		pageNumber: pageNumber;
		user: user;
		group: group;
		credentials: userCredentials;
		buildStreams.

	^self generateXmlAnswer