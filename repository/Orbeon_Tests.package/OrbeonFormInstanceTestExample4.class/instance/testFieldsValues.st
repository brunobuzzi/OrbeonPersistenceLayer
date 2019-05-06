other
testFieldsValues
	| allFields |

	allFields := form getAllFields.

	self assert: ((allFields at: 'nombre' ifAbsent: [#()]) includes: 'Antofagasta').
	self assert: ((allFields at: 'rut' ifAbsent: [#()]) includes: 987654).
	self assert: ((allFields at: 'ciiu2' ifAbsent: [#()]) includes: '02').
	self assert: ((allFields at: 'control-52' ifAbsent: [#()]) includes: '2').
	self assert: ((allFields at: 'pyme' ifAbsent: [#()]) includes: '1').
	self assert: ((allFields at: 'empleados' ifAbsent: [#()]) includes: '1 3').
	self assert: ((allFields at: 'ventasAnuales' ifAbsent: [#()]) includes: '2').
	self assert: ((allFields at: 'certificado_pyme' ifAbsent: [#()]) includes: '/fr/service/persistence/crud/agesic/energy-recursive/data/03445ab8620c6850ab81da36479179b777c56975/78f2d57503b87203da975a48915f736897dc4ee9.bin').
	self assert: ((allFields at: 'nombreDirectivo' ifAbsent: [#()]) includes: 'Bill Gates').
	self assert: ((allFields at: 'cargoDirectivo' ifAbsent: [#()]) includes: 'CEO').
	self assert: ((allFields at: 'direccionDirectivo' ifAbsent: [#()]) includes: 'California 45689').
	self assert: ((allFields at: 'telefonoDirectivo' ifAbsent: [#()]) includes: 994444).
	self assert: ((allFields at: 'emailDirectivo' ifAbsent: [#()]) includes: 'bill@bill.com').

	self assert: ((allFields at: 'nombreCertificador' ifAbsent: [#()]) includes: 'Steve Jobs').
	self assert: ((allFields at: 'cargoCertificador' ifAbsent: [#()]) includes: 'CEO').
	self assert: ((allFields at: 'control-45' ifAbsent: [#()]) includes: 'Apple').
	self assert: ((allFields at: 'control-46' ifAbsent: [#()]) includes: 4).
	self assert: ((allFields at: 'control-45' ifAbsent: [#()]) includes: 'None').
	self assert: ((allFields at: 'control-46' ifAbsent: [#()]) includes: 23).
	self assert: ((allFields at: 'universidad' ifAbsent: [#()]) includes: 'UCLA').
	self assert: ((allFields at: 'curso' ifAbsent: [#()]) includes: 'Computing').
	self assert: ((allFields at: 'curso' ifAbsent: [#()]) includes: 'History').
	self assert: ((allFields at: 'universidad' ifAbsent: [#()]) includes: 'New York').
	self assert: ((allFields at: 'curso' ifAbsent: [#()]) includes: 'Computing History').
	self assert: ((allFields at: 'curso' ifAbsent: [#()]) includes: 'Laws').

	self assert: ((allFields at: 'nombreCertificador' ifAbsent: [#()]) includes: 'Brad Kuninham').
	self assert: ((allFields at: 'cargoCertificador' ifAbsent: [#()]) includes: 'CIO').
	self assert: ((allFields at: 'control-45' ifAbsent: [#()]) includes: 'Torch').
	self assert: ((allFields at: 'control-46' ifAbsent: [#()]) includes: 1).
	self assert: ((allFields at: 'control-45' ifAbsent: [#()]) includes: 'Lokeed').
	self assert: ((allFields at: 'control-46' ifAbsent: [#()]) includes: 1).
	self assert: ((allFields at: 'control-45' ifAbsent: [#()]) includes: 'Bong').
	self assert: ((allFields at: 'control-46' ifAbsent: [#()]) includes: 2).
	self assert: ((allFields at: 'universidad' ifAbsent: [#()]) includes: 'Arizona').
	self assert: ((allFields at: 'curso' ifAbsent: [#()]) includes: 'Computing').
	self assert: ((allFields at: 'curso' ifAbsent: [#()]) includes: 'Computing Layer').
	self assert: ((allFields at: 'curso' ifAbsent: [#()]) includes: 'Programming').
	self assert: ((allFields at: 'universidad' ifAbsent: [#()]) includes: 'Oregon').
	self assert: ((allFields at: 'curso' ifAbsent: [#()]) includes: 'Programming 2').
	self assert: ((allFields at: 'curso' ifAbsent: [#()]) includes: 'Programming 23').
	self assert: ((allFields at: 'universidad' ifAbsent: [#()]) includes: 'Orlando').
	self assert: ((allFields at: 'curso' ifAbsent: [#()]) includes: 'Next').

	self assert: ((allFields at: 'nombreCertificador' ifAbsent: [#()]) includes: 'John McManaman').
	self assert: ((allFields at: 'cargoCertificador' ifAbsent: [#()]) includes: 'CEO/CIO').
	self assert: ((allFields at: 'control-45' ifAbsent: [#()]) includes: 'CIO').
	self assert: ((allFields at: 'control-46' ifAbsent: [#()]) includes: 2).
	self assert: ((allFields at: 'control-45' ifAbsent: [#()]) includes: 'CEO').
	self assert: ((allFields at: 'control-46' ifAbsent: [#()]) includes: 2).
	self assert: ((allFields at: 'universidad' ifAbsent: [#()]) includes: 'Harvard').
	self assert: ((allFields at: 'curso' ifAbsent: [#()]) includes: 'Biology').
	self assert: ((allFields at: 'curso' ifAbsent: [#()]) includes: 'Computer Programming').
	self assert: ((allFields at: 'universidad' ifAbsent: [#()]) includes: 'UCLA').
	self assert: ((allFields at: 'curso' ifAbsent: [#()]) includes: 'Laws').

	self assert: ((allFields at: 'denominacionLocal' ifAbsent: [#()]) includes: 'Montevideo 1').
	self assert: ((allFields at: 'direccion' ifAbsent: [#()]) includes: 'Colonia 87').
	self assert: ((allFields at: 'ciudad' ifAbsent: [#()]) includes: 'Montevideo').
	self assert: ((allFields at: 'dpto' ifAbsent: [#()]) includes: 'montevideo').
	self assert: ((allFields at: 'tipoConsumidor' ifAbsent: [#()]) includes: 'tarifa-doble-horario').
	self assert: ((allFields at: 'consumoEnergiaElectrica' ifAbsent: [#()]) includes: 1555).
	self assert: ((allFields at: 'combustible' ifAbsent: [#()]) includes: '01 03').
	self assert: ((allFields at: 'aserrin' ifAbsent: [#()]) includes: 15).
	self assert: ((allFields at: 'bagazo' ifAbsent: [#()]) includes: nil).
	self assert: ((allFields at: 'biodiesel' ifAbsent: [#()]) includes: 15).
	self assert: ((allFields at: 'bioetanol' ifAbsent: [#()]) includes: nil).
	self assert: ((allFields at: 'carbon_mineral' ifAbsent: [#()]) includes: nil).
	self assert: ((allFields at: 'nombreMedida' ifAbsent: [#()]) includes: 'GH-58').
	self assert: ((allFields at: 'usoPrincipal' ifAbsent: [#()]) includes: '06').
	self assert: ((allFields at: 'energetico_evitado' ifAbsent: [#()]) includes: '16').

	self assert: ((allFields at: 'denominacionLocal' ifAbsent: [#()]) includes: 'Montevideo 2').
	self assert: ((allFields at: 'direccion' ifAbsent: [#()]) includes: '18 de Julio 34').
	self assert: ((allFields at: 'ciudad' ifAbsent: [#()]) includes: 'San Jose').
	self assert: ((allFields at: 'dpto' ifAbsent: [#()]) includes: 'san-josÃ©').
	self assert: ((allFields at: 'tipoConsumidor' ifAbsent: [#()]) includes: 'gc1').
	self assert: ((allFields at: 'consumoEnergiaElectrica' ifAbsent: [#()]) includes: 1580).
	self assert: ((allFields at: 'combustible' ifAbsent: [#()]) includes: '05 04 03 02 01').
	self assert: ((allFields at: 'aserrin' ifAbsent: [#()]) includes: 10).
	self assert: ((allFields at: 'bagazo' ifAbsent: [#()]) includes: 25).
	self assert: ((allFields at: 'biodiesel' ifAbsent: [#()]) includes: 50).
	self assert: ((allFields at: 'bioetanol' ifAbsent: [#()]) includes: 75).
	self assert: ((allFields at: 'carbon_mineral' ifAbsent: [#()]) includes: 100).
	self assert: ((allFields at: 'nombreMedida' ifAbsent: [#()]) includes: 'WEFG-458').
	self assert: ((allFields at: 'usoPrincipal' ifAbsent: [#()]) includes: '03').
	self assert: ((allFields at: 'energetico_evitado' ifAbsent: [#()]) includes: '12').
	self assert: ((allFields at: 'nombreMedida' ifAbsent: [#()]) includes: 'TEE-988').
	self assert: ((allFields at: 'usoPrincipal' ifAbsent: [#()]) includes: '04').
	self assert: ((allFields at: 'energetico_evitado' ifAbsent: [#()]) includes: '05').