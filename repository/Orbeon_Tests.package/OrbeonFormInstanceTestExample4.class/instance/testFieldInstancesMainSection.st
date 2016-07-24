other
testFieldInstancesMainSection

	self assert: (self assertStringFieldNamed: 'nombre' withValues: #('Antofagasta')).

	self assert: (self assertNumberFieldNamed: 'rut' withValues: #(987654)).

	self assert: (self assertStringFieldNamed: 'ciiu2' withValues: #('02')).

	self assert: (self assertStringFieldNamed: 'control-52' withValues: #('2')).

	self assert: (self assertStringFieldNamed: 'pyme' withValues: #('1')).

	self assert: (self assertStringFieldNamed: 'empleados' withValues: #('1 3')).

	self assert: (self assertStringFieldNamed: 'ventasAnuales' withValues: #('2')).

	self assert: (self assertStringFieldNamed: 'certificado_pyme' withValues: #('/fr/service/persistence/crud/agesic/energy-recursive/data/03445ab8620c6850ab81da36479179b777c56975/78f2d57503b87203da975a48915f736897dc4ee9.bin')).