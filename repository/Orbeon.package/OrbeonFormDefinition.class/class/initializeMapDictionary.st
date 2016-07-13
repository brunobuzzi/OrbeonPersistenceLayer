other
initializeMapDictionary

	OrbeonMapDictionary := Dictionary new.
	OrbeonMapDictionary 
		at: 'xf:string' put: AppFieldStringValue;
		at: 'xs:string' put: AppFieldStringValue;
		at: 'xf:boolean' put: AppFieldBooelanValue;
		at: 'xs:boolean' put: AppFieldBooelanValue;
		at: 'xf:integer' put: AppFieldNumberValue;
		at: 'xs:integer' put: AppFieldNumberValue;
		at: 'xf:decimal' put: AppFieldNumberValue;
		at: 'xs:decimal' put: AppFieldNumberValue;
		at: 'xf:double' put: AppFieldNumberValue;
		at: 'xs:double' put: AppFieldNumberValue;
		at: 'xf:positiveInteger' put: AppFieldNumberValue;
		at: 'xs:positiveInteger' put: AppFieldNumberValue;
		at: 'xf:nonPositiveInteger' put: AppFieldNumberValue;
		at: 'xs:nonPositiveInteger' put: AppFieldNumberValue;
		at: 'xf:negativeInteger' put: AppFieldNumberValue;
		at: 'xs:negativeInteger' put: AppFieldNumberValue;
		at: 'xf:nonNegativeInteger' put: AppFieldNumberValue;
		at: 'xs:nonNegativeInteger' put: AppFieldNumberValue;
		at: 'xf:dateTime' put: AppFieldTimeStampValue;
		at: 'xs:dateTime' put: AppFieldTimeStampValue;
		at: 'xf:date' put: AppFieldDateValue;
		at: 'xs:date' put: AppFieldDateValue;
		at: 'xf:time' put: AppFieldTimeValue;
		at: 'xs:time' put: AppFieldTimeValue.