other
setUserCredentialsFrom: jsonString
	"The receiver read roles of the user from <jsonString> and store them in <userCredentials> inst var "
	| jsonDictionary rolesArray |

	userCredentials := OrderedCollection new.

	[jsonDictionary := STON fromString: jsonString] on: STONReaderError do: [:ex | ^self].

	rolesArray := jsonDictionary at: 'roles' ifAbsent: [^self].

	rolesArray do: [:dictionary | userCredentials add: (dictionary at: 'name')].