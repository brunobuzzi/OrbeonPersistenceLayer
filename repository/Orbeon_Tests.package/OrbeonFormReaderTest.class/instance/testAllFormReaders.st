other
testAllFormReaders
	| suite result |

	suite := TestSuite new.

	suite addTest: (OrbeonFormReaderTestExample3 selector: #testApplicationName).
	suite addTest: (OrbeonFormReaderTestExample3 selector: #testCustomPDFAttachment).
	suite addTest: (OrbeonFormReaderTestExample3 selector: #testDescription).
	suite addTest: (OrbeonFormReaderTestExample3 selector: #testFieldTypes).
	suite addTest: (OrbeonFormReaderTestExample3 selector: #testFormFieldsLabels).
	suite addTest: (OrbeonFormReaderTestExample3 selector: #testFormMainSectionsNames).
	suite addTest: (OrbeonFormReaderTestExample3 selector: #testFormMainSectionsSize).
	suite addTest: (OrbeonFormReaderTestExample3 selector: #testFormName).
	suite addTest: (OrbeonFormReaderTestExample3 selector: #testFormSubSectionsStructure).
	suite addTest: (OrbeonFormReaderTestExample3 selector: #testFormTitle).
	suite addTest: (OrbeonFormReaderTestExample3 selector: #testGetAllFormFieldsInSection1).
	suite addTest: (OrbeonFormReaderTestExample3 selector: #testGetAllFormFieldsInSection2).
	suite addTest: (OrbeonFormReaderTestExample3 selector: #testGetFieldsOfGridsInSection1).
	suite addTest: (OrbeonFormReaderTestExample3 selector: #testGetFieldsOfGridsInSection2).
	suite addTest: (OrbeonFormReaderTestExample3 selector: #testGetGridsFromSection1).
	suite addTest: (OrbeonFormReaderTestExample3 selector: #testGetGridsFromSection2).
	suite addTest: (OrbeonFormReaderTestExample3 selector: #testGetSearchFields).
	suite addTest: (OrbeonFormReaderTestExample3 selector: #testGetSummaryFields).
	suite addTest: (OrbeonFormReaderTestExample3 selector: #testPermissions).

	suite addTest: (OrbeonFormReaderTestExample4 selector: #testApplicationName).
	suite addTest: (OrbeonFormReaderTestExample4 selector: #testAttachments).
	suite addTest: (OrbeonFormReaderTestExample4 selector: #testCustomPDFAttachment).
	suite addTest: (OrbeonFormReaderTestExample4 selector: #testDescription).
	suite addTest: (OrbeonFormReaderTestExample4 selector: #testFieldTypes).
	suite addTest: (OrbeonFormReaderTestExample4 selector: #testFormFieldsLabels).
	suite addTest: (OrbeonFormReaderTestExample4 selector: #testFormMainSectionsNames).
	suite addTest: (OrbeonFormReaderTestExample4 selector: #testFormMainSectionsSize).
	suite addTest: (OrbeonFormReaderTestExample4 selector: #testFormName).
	suite addTest: (OrbeonFormReaderTestExample4 selector: #testFormSubSectionsStructure).
	suite addTest: (OrbeonFormReaderTestExample4 selector: #testFormTitle).
	suite addTest: (OrbeonFormReaderTestExample4 selector: #testGetAllFormFieldsInSection1).
	suite addTest: (OrbeonFormReaderTestExample4 selector: #testGetAllFormFieldsInSection2).
	suite addTest: (OrbeonFormReaderTestExample4 selector: #testGetFieldsOfGridsInSection1).
	suite addTest: (OrbeonFormReaderTestExample4 selector: #testGetFieldsOfGridsInSection2).
	suite addTest: (OrbeonFormReaderTestExample4 selector: #testGetGridsFromSection1).
	suite addTest: (OrbeonFormReaderTestExample4 selector: #testGetGridsFromSection2).
	suite addTest: (OrbeonFormReaderTestExample4 selector: #testGetSearchFields).
	suite addTest: (OrbeonFormReaderTestExample4 selector: #testGetSummaryFields).
	suite addTest: (OrbeonFormReaderTestExample4 selector: #testPermissions).

	result := suite run.

	self assert: (result failures size = 0).
	self assert: (result errors size = 0).