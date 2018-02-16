other
doIt
	"This method is called by Orbeon when a user click 'Duplicate' in a Form Instance in the Form Runner"
	| orbeonInstance application currentInstance |

	application := self getOrbeonApplicationClass applicationNamed: self getApplicationName ifNone: [^self signalNoApplicationException: self getApplicationName].
	currentInstance := application getAnyInstanceWithId: id of: self getFormName.

	orbeonInstance := OrbeonFormInstance new.

	orbeonInstance xmlString: xmlString;
		id: id;
		definition: currentInstance definition;
		version: version;
		updateLastModifiedTime.