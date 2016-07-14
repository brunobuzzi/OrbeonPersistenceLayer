other
testAllFormDefinitions
	| suite result |

	suite := TestSuite new.

	suite addTest: (OrbeonFormDefinitionTestExample3 selector: #testFieldTypes).
	suite addTest: (OrbeonFormDefinitionTestExample3 selector: #testFormFieldsInSection1).
	suite addTest: (OrbeonFormDefinitionTestExample3 selector: #testFormFieldsInSection11).
	suite addTest: (OrbeonFormDefinitionTestExample3 selector: #testFormFieldsInSection2).
	suite addTest: (OrbeonFormDefinitionTestExample3 selector: #testFormFieldsInSection21).
	suite addTest: (OrbeonFormDefinitionTestExample3 selector: #testGridInSection11).
	suite addTest: (OrbeonFormDefinitionTestExample3 selector: #testGridInSection2).
	suite addTest: (OrbeonFormDefinitionTestExample3 selector: #testMainSectionsStructure).
	suite addTest: (OrbeonFormDefinitionTestExample3 selector: #testPermissions).

	suite addTest: (OrbeonFormDefinitionTestExample4 selector: #testAttachments).
	suite addTest: (OrbeonFormDefinitionTestExample4 selector: #testCustomPDFAttachment).
	suite addTest: (OrbeonFormDefinitionTestExample4 selector: #testFieldTypes).
	suite addTest: (OrbeonFormDefinitionTestExample4 selector: #testFormFieldsInSection1).
	suite addTest: (OrbeonFormDefinitionTestExample4 selector: #testFormFieldsInSection11).
	suite addTest: (OrbeonFormDefinitionTestExample4 selector: #testFormFieldsInSection2).
	suite addTest: (OrbeonFormDefinitionTestExample4 selector: #testFormFieldsInSection21).
	suite addTest: (OrbeonFormDefinitionTestExample4 selector: #testGridInSection11).
	suite addTest: (OrbeonFormDefinitionTestExample4 selector: #testGridInSection2).
	suite addTest: (OrbeonFormDefinitionTestExample4 selector: #testMainSectionsStructure).
	suite addTest: (OrbeonFormDefinitionTestExample4 selector: #testPermissions).
	result := suite run.

	self assert: (result failures size = 0).
	self assert: (result errors size = 0).