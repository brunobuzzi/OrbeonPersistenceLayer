other
showWarningsOf: aFileImportReport

	self show: ((WAOrbeonWarningReport parent: self) 
							warnings: aFileImportReport warnings;
							yourself).