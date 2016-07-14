other
testAllComparision
	| suite result |

	suite := TestSuite new.

	suite addTest: (FormDefinitionComparatorTest1 selector: #testComparision).
	suite addTest: (FormDefinitionComparatorTest2 selector: #testComparision).
	suite addTest: (FormDefinitionComparatorTest3 selector: #testComparision).

	result := suite run.

	self assert: (result failures size = 0).
	self assert: (result errors size = 0).