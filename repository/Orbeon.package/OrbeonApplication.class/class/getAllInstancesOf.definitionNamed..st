all forms
getAllInstancesOf: appName definitionNamed: defName
	""
	| application registry |

	application := self getOrbeonApplicationClass applicationNamed: appName ifNone: [^#()].
	registry := application registryForFormNamed: defName ifNone: [^#()].

	^registry getInstancesOfAllVersions