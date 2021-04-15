tests
testFieldInstancesSectionD

	self assert: (self assertStringFieldNamed: 'denominacionLocal' withValues: #('Montevideo 1' 'Montevideo 2')).

	self assert: (self assertStringFieldNamed: 'direccion' withValues: #('Colonia 87' '18 de Julio 34')).

	self assert: (self assertStringFieldNamed: 'ciudad' withValues: #('Montevideo' 'San Jose')).

	self assert: (self assertStringFieldNamed: 'dpto' withValues: #('montevideo' 'san-josé')).

	self assert: (self assertStringFieldNamed: 'tipoConsumidor' withValues: #('gc1' 'tarifa-doble-horario')).

	self assert: (self assertNumberFieldNamed: 'consumoEnergiaElectrica' withValues: #(1555 1580)).

	self assert: (self assertStringFieldNamed: 'combustible' withValues: #('16 15 14 13 01 03' '01 02 03 04 05')).

	self assert: (self assertNumberFieldNamed: 'aserrin' withValues: #(10 15)).

	self assert: (self assertNumberFieldNamed: 'bagazo' withValues: #(25)).

	self assert: (self assertNumberFieldNamed: 'biodiesel' withValues: #(15 50)).

	self assert: (self assertNumberFieldNamed: 'bioetanol' withValues: #(75)).

	self assert: (self assertNumberFieldNamed: 'carbon_mineral' withValues: #(100)).

	self assert: (self assertStringFieldNamed: 'nombreMedida' withValues: #('GH-58' 'R-87' 'WEFG-458' 'TEE-988')).

	self assert: (self assertStringFieldNamed: 'usoPrincipal' withValues: #('03' '04' '06' '08')).

	self assert: (self assertStringFieldNamed: 'energetico_evitado' withValues: #('03' '05' '12' '16')).