tests
testFieldInstances

	self assert: (self assertStringFieldNamed: 'name' withValues: #('Bruno' 'Alfredo')).

	self assert: (self assertStringFieldNamed: 'surname' withValues: #('Buzzi' 'Brassesco' 'Pereira' 'Nieto')).

	self assert: (self assertStringFieldNamed: 'address' withValues: #('Chana 1938' 'Colonia 124' 'Punta del Este1345' '18 de Julio')).

	self assert: (self assertStringFieldNamed: 'phone' withValues: #('408' '901' '368' '909')).

	self assert: (self assertStringFieldNamed: 'housePlace' withValues: #('Comedor' 'Cocina' 'Barbacoa' 'Comedor' 'Comedor' 'Sala')).

	self assert: (self assertStringFieldNamed: 'placeElements' withValues: #('Mesa' 'Tele' 'Cocina' 'Heladera' 'Parrilla' 'Baño' 'Mesa' 'Tele' 'Tele Gigante' 'TV')).