definition tests
testGetAllFormFieldsInSection2
	| section2 allFields |

	section2 := reader formMainSections second.
	allFields := reader getAllFormFieldsIn: section2. "includes all fields inside a repeatable grid or not"

	self assert: (allFields size = 13).