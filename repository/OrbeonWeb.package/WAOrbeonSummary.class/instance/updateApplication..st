import
updateApplication: anOrbeonApplication
	| importedObjects |

	importedObjects := self topPanel updateApplication: anOrbeonApplication.

	self show: ((WADefinitionImportReport parent: self) 
							importedData: importedObjects;
							yourself).