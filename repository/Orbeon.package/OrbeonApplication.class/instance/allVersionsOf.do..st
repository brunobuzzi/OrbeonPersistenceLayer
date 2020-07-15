registry access
allVersionsOf: formName do: aBlock

	(self registryForFormNamed: formName) allVersionsDo: aBlock