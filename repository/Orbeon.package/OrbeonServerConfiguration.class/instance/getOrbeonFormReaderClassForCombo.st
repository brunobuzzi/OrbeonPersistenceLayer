other
getOrbeonFormReaderClassForCombo

	^self getOrbeonFormReaderClass ifNil: [nil] ifNotNil: [:versionClass | versionClass comboBoxName]