mysql to gs
getAllEditionVersion
	"Get all OrbeonDefinitionForm's that are stored in orbeon_data table but are OrbeonDefinitions.
	When a XForms is being edited inside Orbeon Builder and then saved. A row is added to orbeon_data.
	Only when the form is published an entry to orbeon_definition is added.
	Answer OrbeonDefinitions that are being edited but not published yet (from orbeon_data)"
	| instancesString dbString instDef |

	instDef := OrderedCollection new.
	instancesString := self execute: mySqlReader sqlGetAllInstanceDefinitions.
	instancesString isEmpty ifTrue: [^instanceDefinitions].
	dbString := instancesString subStrings: String lf.
	dbString do: [:eachDbLine |
			instDef add: (self generateFormInstanceDefinition: 'builder' app: 'orbeon' from: eachDbLine).].
	
	"instanceDefinitions do: [:each | each addToCache]."

	^instDef