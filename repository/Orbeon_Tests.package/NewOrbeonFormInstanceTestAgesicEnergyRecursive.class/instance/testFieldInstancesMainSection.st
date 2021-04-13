tests
testFieldInstancesMainSection

	self assert: (self assertStringFieldNamed: 'nombre' withValues: #('Antofagasta')).

	self assert: (self assertNumberFieldNamed: 'rut' withValues: #(987654)).

	self assert: (self assertStringFieldNamed: 'ciiu2' withValues: #('02')).

	self assert: (self assertStringFieldNamed: 'control-52' withValues: #('2')).

	self assert: (self assertStringFieldNamed: 'pyme' withValues: #('1')).

	self assert: (self assertStringFieldNamed: 'empleados' withValues: #('1 3')).

	self assert: (self assertStringFieldNamed: 'ventasAnuales' withValues: #('2')).

	self assert: (self assertStringFieldNamed: 'certificado_pyme' withValues: #('/fr/service/persistence/crud/agesic/energy-recursive/data/5ae7464ba7b46d72ed57a962a8b8a892782ca766/0ab0625fc62b526bcdac78eab14f2261b947b4a2.bin')).