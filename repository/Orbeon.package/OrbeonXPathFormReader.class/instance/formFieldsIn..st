orbeon sections
formFieldsIn: xmlSection
	"The receiver answer a collection with all fields in Section <xmlSection> excluding Repeatable Sections.
	Fields inside Repeatable GRIDS [fr:grid] are also ingnored"
	| fields |

	fields := OrderedCollection new.
	(xmlSection xPath: 'fr:grid[not(@repeat)]') "does NOT contain attribute <repeat>"
		do: [:eachGrid | 
			(eachGrid xPath: 'xh:tr/xh:td/*[starts-with(name(), ''fr:'')]') addAllTo: fields.
			(eachGrid xPath: 'xh:tr/xh:td/*[starts-with(name(), ''us:'')]') addAllTo: fields.
			(eachGrid xPath: 'xh:tr/xh:td/*[starts-with(name(), ''xf:'')]') addAllTo: fields.].

	^fields