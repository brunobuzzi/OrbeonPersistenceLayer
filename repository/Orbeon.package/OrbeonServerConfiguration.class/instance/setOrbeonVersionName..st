other
setOrbeonVersionName: versionName
	| newXPathOrbeonVersion |

	newXPathOrbeonVersion := (OrbeonXmlPath subclasses detect: [:each | each comboBoxName = versionName] ifNone: [^nil]) new.

	orbeonXpathVersion := newXPathOrbeonVersion