db import
getAllDocumentIdsForDefinition: anOrbeonFormDefinition

	"^self execute: (mySqlReader sqlGetAllDocumentIdsFrom: anOrbeonFormDefinition form of: anOrbeonFormDefinition app)"

	^self execute: (mySqlReader sqlGetAllDocumentIdsFrom: anOrbeonFormDefinition formName of: anOrbeonFormDefinition getApplicationName version: anOrbeonFormDefinition version)