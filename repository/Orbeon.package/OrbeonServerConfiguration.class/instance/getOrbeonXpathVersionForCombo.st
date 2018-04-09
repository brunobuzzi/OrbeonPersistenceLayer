other
getOrbeonXpathVersionForCombo

	^self getOrbeonXpathVersionClass ifNil: [nil] ifNotNil: [:versionClass | versionClass comboBoxName]