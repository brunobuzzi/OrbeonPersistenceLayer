other
testAllFormInstances
	| suite result |

	suite := TestSuite new.

	suite addTest: (OrbeonFormInstanceTestExample1 selector: #testFieldInstances).
	suite addTest: (OrbeonFormInstanceTestExample1 selector: #testFieldsValues).
	suite addTest: (OrbeonFormInstanceTestExample1 selector: #testSectionStructureAndValues).

	suite addTest: (OrbeonFormInstanceTestExample2 selector: #testFieldsValues).
	suite addTest: (OrbeonFormInstanceTestExample2 selector: #testSectionStructureAndValues).

	suite addTest: (OrbeonFormInstanceTestExample3 selector: #testFieldsValues).
	suite addTest: (OrbeonFormInstanceTestExample3 selector: #testSectionStructureAndValues).

	result := suite run.

	self assert: (result failures size = 0).
	self assert: (result errors size = 0).