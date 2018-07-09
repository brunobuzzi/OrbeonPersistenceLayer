other
importDataFromDatabase
	| applicationName formName startVersion endVersion |

	applicationName := self componentValueAt: 'app-name'.
	formName := self componentValueAt: 'form-name'.
	startVersion := Number fromString: (self componentValueAt: 'from-version').
	endVersion := Number fromString: (self componentValueAt: 'to-version').

	OrbeonHandler default
		importFormNamed: formName 
		in: applicationName 
		fromVersion: startVersion 
		toVersion: endVersion