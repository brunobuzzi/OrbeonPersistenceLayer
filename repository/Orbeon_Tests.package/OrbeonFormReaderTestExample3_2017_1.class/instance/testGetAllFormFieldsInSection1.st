definition tests
testGetAllFormFieldsInSection1
	| section1 allFields |

	section1 := reader formMainSections first.
	allFields := reader getAllFormFieldsIn: section1. "includes all fields inside a repeatable grid or not"

	self assert: (allFields size = 9).