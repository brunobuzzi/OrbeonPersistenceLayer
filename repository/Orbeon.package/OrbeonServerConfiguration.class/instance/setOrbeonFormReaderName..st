xpath version
setOrbeonFormReaderName: formReaderName

	orbeonFormReaderClass := OrbeonXPathFormReader subclasses detect: [:each | each comboBoxName = formReaderName] ifNone: [^nil]