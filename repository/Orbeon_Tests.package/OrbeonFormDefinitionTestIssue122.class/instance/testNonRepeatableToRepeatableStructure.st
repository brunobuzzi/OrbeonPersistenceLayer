other
testNonRepeatableToRepeatableStructure
	| formInstance |

	formInstance := 	(OrbeonFormInstance newFor: form withId: UUID new asString)
					definition: form;
					xmlString: OrbeonFormInstanceTemplate form_issue122;
					processXMLSections;
					yourself.