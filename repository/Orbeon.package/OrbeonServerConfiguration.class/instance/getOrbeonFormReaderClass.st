other
getOrbeonFormReaderClass

	^OrbeonXPathFormReader subclasses detect: [:each | each comboBoxName = orbeonFormReaderClass comboBoxName] ifNone: [nil]