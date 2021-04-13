tests
testFieldsValues
	| allFields |

	allFields := form getAllFields.

	self assert: ((allFields at: 'name' ifAbsent: [#()]) includes: 'Bruno').
	self assert: ((allFields at: 'surname' ifAbsent: [#()]) includes: 'Buzzi').
	self assert: ((allFields at: 'surname' ifAbsent: [#()]) includes: 'Brassesco').
	self assert: ((allFields at: 'address' ifAbsent: [#()]) includes: 'Chana 1938').
	self assert: ((allFields at: 'phone' ifAbsent: [#()]) includes: '408').
	self assert: ((allFields at: 'housePlace' ifAbsent: [#()]) includes: 'Comedor').
	self assert: ((allFields at: 'placeElements' ifAbsent: [#()]) includes: 'Mesa').
	self assert: ((allFields at: 'placeElements' ifAbsent: [#()]) includes: 'Tele').
	self assert: ((allFields at: 'housePlace' ifAbsent: [#()]) includes: 'Cocina').
	self assert: ((allFields at: 'placeElements' ifAbsent: [#()]) includes: 'Cocina').
	self assert: ((allFields at: 'placeElements' ifAbsent: [#()]) includes: 'Heladera').
	self assert: ((allFields at: 'address' ifAbsent: [#()]) includes: 'Colonia 124').
	self assert: ((allFields at: 'phone' ifAbsent: [#()]) includes: '901').
	self assert: ((allFields at: 'housePlace' ifAbsent: [#()]) includes: 'Barbacoa').
	self assert: ((allFields at: 'placeElements' ifAbsent: [#()]) includes: 'Parrilla').
	self assert: ((allFields at: 'placeElements' ifAbsent: [#()]) includes: 'Baño').
	self assert: ((allFields at: 'housePlace' ifAbsent: [#()]) includes: 'Comedor').
	self assert: ((allFields at: 'placeElements' ifAbsent: [#()]) includes: 'Mesa').
	self assert: ((allFields at: 'placeElements' ifAbsent: [#()]) includes: 'Tele').

	self assert: ((allFields at: 'name' ifAbsent: [#()]) includes: 'Alfredo').
	self assert: ((allFields at: 'surname' ifAbsent: [#()]) includes: 'Pereira').
	self assert: ((allFields at: 'surname' ifAbsent: [#()]) includes: 'Nieto').
	self assert: ((allFields at: 'address' ifAbsent: [#()]) includes: 'Punta del Este1345').
	self assert: ((allFields at: 'phone' ifAbsent: [#()]) includes: '368').
	self assert: ((allFields at: 'housePlace' ifAbsent: [#()]) includes: 'Comedor').
	self assert: ((allFields at: 'placeElements' ifAbsent: [#()]) includes: 'Tele Gigante').
	self assert: ((allFields at: 'address' ifAbsent: [#()]) includes: '18 de Julio').
	self assert: ((allFields at: 'phone' ifAbsent: [#()]) includes: '909').
	self assert: ((allFields at: 'housePlace' ifAbsent: [#()]) includes: 'Sala').
	self assert: ((allFields at: 'placeElements' ifAbsent: [#()]) includes: 'TV').