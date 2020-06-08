other
getOrbeonFormReaderClass

	^OrbeonXPathFormReader subclasses detect: [:each | each comboBoxName = self orbeonFormReaderClass comboBoxName] ifNone: [nil]