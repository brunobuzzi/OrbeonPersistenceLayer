orbeon sections
formFieldsIn: xmlSection
	"The receiver answer a collection with all fields in Section <xmlSection> excluding Repeatable Sections.
	Fields inside Repeatable GRIDS [fr:grid] are also ingnored"
	| fields orbeonXPath |

	orbeonXPath := systemRoot dataFormatVersion.
	fields := OrderedCollection new.
	(xmlSection xPath: orbeonXPath frGridsNoRepeatXpath) "does NOT contain attribute <repeat>"
		do: [:eachGrid | 
			(eachGrid xPath: orbeonXPath frFieldsInSectionXpath) addAllTo: fields.
			(eachGrid xPath: orbeonXPath usFieldsInSectionXpath) addAllTo: fields.
			(eachGrid xPath: orbeonXPath xfFieldsInSectionXpath) addAllTo: fields.].

	^fields