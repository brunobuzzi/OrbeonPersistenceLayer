migration operations
importApplicationAndForm
	| applicationName formName |

	applicationName := self componentValueAt: 'app-name'.
	formName := self componentValueAt: 'form-name'.

	self session systemRoot migrateFormDefinitionNamed: formName in: applicationName