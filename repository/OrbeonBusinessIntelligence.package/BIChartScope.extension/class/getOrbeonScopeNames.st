*orbeonBusinessIntelligence
getOrbeonScopeNames

	^Array 
		with: OrbeonGlobalScope scopeName
		with: OrbeonApplicationScope scopeName
		with: OrbeonFormDefinitionAllVersionsScope scopeName
		with: OrbeonFormDefinitionScope scopeName
		with: OrbeonFieldValuesScope scopeName