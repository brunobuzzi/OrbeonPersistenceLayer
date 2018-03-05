other
testComparision_2017_2
	| differences |

	formOne xmlString: OrbeonFormDefinitionTemplateFrom2017_2 form_withAllField_Types_no_Attachements_01;
				processXMLDefinitionFor: OrbeonXmlPath2017_2 new;
				yourself.

	formTwo xmlString: OrbeonFormDefinitionTemplateFrom2017_2 form_withAllField_Types_no_Attachements_02;
				processXMLDefinitionFor: OrbeonXmlPath2017_2 new.

	differences := (formOne compareWith: formTwo) comparisionResult.

	self assert: (differences size = 9).

	self assert: ((differences select: [:each | each isFieldTypeChanged]) size = 2).

	self assert: ((differences select: [:each | each isFieldDoesNotExist]) size = 6).

	self assert: ((differences select: [:each | each isSectionDoesNotExist]) size = 1).