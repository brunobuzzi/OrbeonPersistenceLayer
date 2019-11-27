testing phase
createNewVersionBasedOnThis
	"This method is for testing purpose.
	Create and publish a new version of the receiver"

	^self class 
			createDefinition: formName 
			version: (self getLatestDefinition version + 1) 
			withXML: xmlString 
			in: application 
			title: self title
			xPathVersion: OrbeonXmlPath2017_2 new