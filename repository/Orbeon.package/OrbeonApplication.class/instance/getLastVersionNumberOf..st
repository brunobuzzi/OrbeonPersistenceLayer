published forms
getLastVersionNumberOf: formName
	| registry |

	registry := self registryForFormNamed: formName.
	
	^registry getLastVersionNumber