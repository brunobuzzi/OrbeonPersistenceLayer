other
testFieldInstancesSectionC

	self assert: (self assertStringFieldNamed: 'nombreCertificador' withValues: #('Steve Jobs' 'Brad Kuninham' 'John McManaman')).

	self assert: (self assertStringFieldNamed: 'cargoCertificador' withValues: #('CEO' 'CIO' 'CEO/CIO')).

	self assert: (self assertStringFieldNamed: 'control-45' withValues: #('Apple' 'None' 'Torch' 'Lokeed' 'Bong')).

	self assert: (self assertNumberFieldNamed: 'control-46' withValues: #(1 1 2 4 23 2 2)).

	self assert: (self assertStringFieldNamed: 'universidad' withValues: #('UCLA' 'New York' 'Arizona' 'Oregon' 'Orlando' 'Harvard' 'UCLA')).

	self assert: (self assertStringFieldNamed: 'curso' withValues: #('Computing' 'History' 'Computing History' 'Laws' 'Computing' 'Computing Layer' 'Programming' 'Programming 2' 'Programming 23' 'Next' 'Biology' 'Computer Programming' 'Laws')).