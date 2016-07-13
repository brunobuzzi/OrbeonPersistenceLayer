import
importNewApplications
	| importedData |

	importedData := parent importNewApplications.

	self show: ((WAApplicationImportReport parent: self) 
							importedData: importedData;
							yourself).