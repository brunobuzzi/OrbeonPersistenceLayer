*orbeon_Tests
createSameVersionBasedOnThis
	"This method is for testing purpose.
	Create and publish a new version of the receiver"

	^self class 
			createDefinition: formName 
			version: version	 
			withXML: xmlString 
			in: application 
			title: self title
			xPathVersion: OrbeonXmlPath2017_2 new