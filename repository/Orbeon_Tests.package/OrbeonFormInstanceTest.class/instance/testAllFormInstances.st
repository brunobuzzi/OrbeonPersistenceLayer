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

	suite addTest: (OrbeonFormInstanceTestExample4 selector: #testFieldInstancesMainSection).
	suite addTest: (OrbeonFormInstanceTestExample4 selector: #testFieldInstancesSectionB).
	suite addTest: (OrbeonFormInstanceTestExample4 selector: #testFieldInstancesSectionC).
	suite addTest: (OrbeonFormInstanceTestExample4 selector: #testFieldInstancesSectionD).
	suite addTest: (OrbeonFormInstanceTestExample4 selector: #testFieldsValues).
	suite addTest: (OrbeonFormInstanceTestExample4 selector: #testSectionStructureAndValues).

	result := suite run.

	self assert: (result failures size = 0).
	self assert: (result errors size = 0).