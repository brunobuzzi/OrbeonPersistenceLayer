other
testComparision_2017_2
	| differences |

	formOne xmlString: OrbeonFormDefinitionTemplateFrom2017_2 formDefinition_comparision_v1;
				processXMLDefinitionFor: OrbeonXmlPath2017_2 new;
				yourself.

	formTwo xmlString: OrbeonFormDefinitionTemplateFrom2017_2 formDefinition_comparision_v2;
				processXMLDefinitionFor: OrbeonXmlPath2017_2 new.

	differences := (formOne compareWith: formTwo) comparisionResult.

	self assert: (differences size = 6).

	self assert: ((differences select: [:each | each isFieldTypeChanged]) size = 1).

	self assert: ((differences select: [:each | each isFieldDoesNotExist]) size = 4).

	self assert: ((differences select: [:each | each isSectionDoesNotExist]) size = 1).