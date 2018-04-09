other
getOrbeonXpathVersionClass

	^OrbeonXmlPath subclasses detect: [:each | each comboBoxName = orbeonXpathVersion comboBoxName] ifNone: [nil]