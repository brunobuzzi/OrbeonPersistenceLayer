removing
removeFromMainCollection
	"The receiver put its self as deleted and call the definition to removed it self"

	deleted := 'Y'.

	definition removeFromMainDictionary: self.

	self removeFieldInstancesFromAllValuesOfAllForms.

	definition := nil.