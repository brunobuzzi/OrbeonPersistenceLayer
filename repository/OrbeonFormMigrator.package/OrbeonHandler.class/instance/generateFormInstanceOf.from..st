mapping
generateFormInstanceOf: anOrbeonFormDefinition from: dbArray
	"Create a new instance of the Form based on <dbArray>"
	| formId formInstance |

	formId := dbArray at: 6 ifAbsent: [nil]. "the position <6> has the value of ID in the database, check <Orbeon46MySQL>"
	formInstance := anOrbeonFormDefinition "if the instance already exist we use it if NOT --> create a newone"
		getInstanceWithId: formId 
		ifNone: [OrbeonFormInstance newFor: anOrbeonFormDefinition].

	^formInstance
			updateFrom: dbArray;
			xmlString: ((dbArray at: 8) copyReplaceAll: '\n' with: Character lf); "-\n- is inserted by Bash "
			yourself