other
testDoIt
	| xmlStringResult formDefinition stringTS |

	xmlStringResult := (OrbeonFrPageApi newOn: testRoot) doIt.
	self assert: xmlStringResult equals: '<forms/>'.

	formDefinition := self createFormStructure.
	stringTS := formDefinition createdTime asOrbeonDateTimeString.

	xmlStringResult := (OrbeonFrPageApi newOn: testRoot) doIt.
	self assert: xmlStringResult equals: '<forms><form><application-name>agesic</application-name><form-name>test-all-types-4</form-name><form-version>1</form-version><title>Test</title><description/><last-modified-time>', stringTS,'</last-modified-time><available>true</available></form></forms>'.