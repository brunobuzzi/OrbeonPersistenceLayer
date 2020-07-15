registry access
currentVersionsOf: formName do: aBlock

	(self registryForFormNamed: formName) currentVersionsDo: aBlock