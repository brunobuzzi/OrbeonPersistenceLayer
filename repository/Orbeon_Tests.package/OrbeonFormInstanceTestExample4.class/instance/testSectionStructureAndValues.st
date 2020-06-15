other
testSectionStructureAndValues
	| sectionMain section41 sections53 section53 sections81 section81 subSection grid |

	"Main Sections"
	self assert: ((form sectionsDetect: [:each | each name = 'Datos-generales'] ifNone: [self assert: false])) notNil.
	self assert: ((form sectionsDetect: [:each | each name = 'section-41'] ifNone: [self assert: false])) notNil.
	self assert: ((form sectionsDetect: [:each | each name = 'section-53'] ifNone: [self assert: false])) notNil.
	self assert: ((form sectionsDetect: [:each | each name = 'section-81'] ifNone: [self assert: false])) notNil.

	"Main Sections - Fields"
	sectionMain := form sectionsDetect: [:each | each name = 'Datos-generales'] ifNone: [self assert: false].

	self assert: ((sectionMain valueAt: 'nombre') = 'Antofagasta').
	self assert: ((sectionMain valueAt: 'rut') = 987654).
	self assert: ((sectionMain valueAt: 'ciiu2') = '02').
	self assert: ((sectionMain valueAt: 'control-52') = '2').
	self assert: ((sectionMain valueAt: 'pyme') = '1').
	self assert: ((sectionMain valueAt: 'empleados') = '1 3').
	self assert: ((sectionMain valueAt: 'ventasAnuales') = '2').
	self assert: ((sectionMain valueAt: 'certificado_pyme') = '/fr/service/persistence/crud/agesic/energy-recursive/data/03445ab8620c6850ab81da36479179b777c56975/78f2d57503b87203da975a48915f736897dc4ee9.bin').

	section41 := form sectionsDetect: [:each | each name = 'section-41'] ifNone: [self assert: false].
	self assert: ((section41 valueAt: 'nombreDirectivo') = 'Bill Gates').
	self assert: ((section41 valueAt: 'cargoDirectivo') = 'CEO').
	self assert: ((section41 valueAt: 'direccionDirectivo') = 'California 45689').
	self assert: ((section41 valueAt: 'telefonoDirectivo') = 994444).
	self assert: ((section41 valueAt: 'emailDirectivo') = 'bill@bill.com').

	sections53 := form sectionsSelect: [:each | each name = 'section-53'].
	section53 := sections53 at: 1.
	self assert: ((section53 valueAt: 'nombreCertificador') = 'Steve Jobs').
	self assert: ((section53 valueAt: 'cargoCertificador') = 'CEO').
	grid := section53 getGridNamed: 'grid-43'.
	self assert: ((grid getAllValuesFor: 'control-45') includes: 'Apple').
	self assert: ((grid getAllValuesFor: 'control-46') includes: 4).
	self assert: ((grid getAllValuesFor: 'control-45') includes: 'None').
	self assert: ((grid getAllValuesFor: 'control-46') includes: 23).
	subSection := section53 subSectionsAt: 1.
	self assert: ((subSection valueAt: 'universidad') = 'UCLA').
	grid := subSection getGridNamed: 'grid-50'.
	self assert: ((grid getAllValuesFor: 'curso') includes: 'Computing').
	self assert: ((grid getAllValuesFor: 'curso') includes: 'History').
	subSection := section53 subSectionsAt: 2.
	self assert: ((subSection valueAt: 'universidad') = 'New York').
	grid := subSection getGridNamed: 'grid-50'.
	self assert: ((grid getAllValuesFor: 'curso') includes: 'Computing History').
	self assert: ((grid getAllValuesFor: 'curso') includes: 'Laws').

	section53 := sections53 at: 2.
	self assert: ((section53 valueAt: 'nombreCertificador') = 'Brad Kuninham').
	self assert: ((section53 valueAt: 'cargoCertificador') = 'CIO').
	grid := section53 getGridNamed: 'grid-43'.
	self assert: ((grid getAllValuesFor: 'control-45') includes: 'Torch').
	self assert: ((grid getAllValuesFor: 'control-46') includes: 1).
	self assert: ((grid getAllValuesFor: 'control-45') includes: 'Lokeed').
	self assert: ((grid getAllValuesFor: 'control-46') includes: 1).
	self assert: ((grid getAllValuesFor: 'control-45') includes: 'Bong').
	self assert: ((grid getAllValuesFor: 'control-46') includes: 2).
	subSection := section53 subSectionsAt: 1.
	self assert: ((subSection valueAt: 'universidad') = 'Arizona').
	grid := subSection getGridNamed: 'grid-50'.
	self assert: ((grid getAllValuesFor: 'curso') includes: 'Computing').
	self assert: ((grid getAllValuesFor: 'curso') includes: 'Computing Layer').
	self assert: ((grid getAllValuesFor: 'curso') includes: 'Programming').
	subSection := section53 subSectionsAt: 2.
	self assert: ((subSection valueAt: 'universidad') = 'Oregon').
	grid := subSection getGridNamed: 'grid-50'.
	self assert: ((grid getAllValuesFor: 'curso') includes: 'Programming 2').
	self assert: ((grid getAllValuesFor: 'curso') includes: 'Programming 23').
	subSection := section53 subSectionsAt: 3.
	self assert: ((subSection valueAt: 'universidad') = 'Orlando').
	grid := subSection getGridNamed: 'grid-50'.
	self assert: ((grid getAllValuesFor: 'curso') includes: 'Next').

	section53 := sections53 at: 3.
	self assert: ((section53 valueAt: 'nombreCertificador') = 'John McManaman').
	self assert: ((section53 valueAt: 'cargoCertificador') = 'CEO/CIO').
	grid := section53 getGridNamed: 'grid-43'.
	self assert: ((grid getAllValuesFor: 'control-45') includes: 'CIO').
	self assert: ((grid getAllValuesFor: 'control-46') includes: 2).
	self assert: ((grid getAllValuesFor: 'control-45') includes: 'CEO').
	self assert: ((grid getAllValuesFor: 'control-46') includes: 2).
	subSection := section53 subSectionsAt: 1.
	self assert: ((subSection valueAt: 'universidad') = 'Harvard').
	grid := subSection getGridNamed: 'grid-50'.
	self assert: ((grid getAllValuesFor: 'curso') includes: 'Biology').
	self assert: ((grid getAllValuesFor: 'curso') includes: 'Computer Programming').
	subSection := section53 subSectionsAt: 2.
	self assert: ((subSection valueAt: 'universidad') = 'UCLA').
	grid := subSection getGridNamed: 'grid-50'.
	self assert: ((grid getAllValuesFor: 'curso') includes: 'Laws').

	sections81 := form sectionsSelect: [:each | each name = 'section-81'].
	section81 := sections81 at: 1.
	self assert: ((section81 valueAt: 'denominacionLocal') = 'Montevideo 1').
	self assert: ((section81 valueAt: 'direccion') = 'Colonia 87').
	self assert: ((section81 valueAt: 'ciudad') = 'Montevideo').
	self assert: ((section81 valueAt: 'dpto') = 'montevideo').
	self assert: ((section81 valueAt: 'tipoConsumidor') = 'tarifa-doble-horario').
	self assert: ((section81 valueAt: 'consumoEnergiaElectrica') = 1555).
	self assert: ((section81 valueAt: 'combustible') = '01 03').
	self assert: ((section81 valueAt: 'aserrin') = 15).
	self assert: ((section81 valueAt: 'bagazo') = nil).
	self assert: ((section81 valueAt: 'biodiesel') = 15).
	self assert: ((section81 valueAt: 'bioetanol') = nil).
	self assert: ((section81 valueAt: 'carbon_mineral') = nil).
	grid := section81 getGridNamed: 'grid-83'.
	self assert: ((grid getAllValuesFor: 'nombreMedida') includes: 'GH-58').
	self assert: ((grid getAllValuesFor: 'usoPrincipal') includes: '06').
	self assert: ((grid getAllValuesFor: 'energetico_evitado') includes: '16').
	self assert: ((grid getAllValuesFor: 'nombreMedida') includes: 'R-87').
	self assert: ((grid getAllValuesFor: 'usoPrincipal') includes: '08').
	self assert: ((grid getAllValuesFor: 'energetico_evitado') includes: '03').
	section81 := sections81 at: 2.
	self assert: ((section81 valueAt: 'denominacionLocal') = 'Montevideo 2').
	self assert: ((section81 valueAt: 'direccion') = '18 de Julio 34').
	self assert: ((section81 valueAt: 'ciudad') = 'San Jose').
	self assert: ((section81 valueAt: 'dpto') = 'san-josÃ©').
	self assert: ((section81 valueAt: 'tipoConsumidor') = 'gc1').
	self assert: ((section81 valueAt: 'consumoEnergiaElectrica') = 1580).
	self assert: ((section81 valueAt: 'combustible') = '05 04 03 02 01').
	self assert: ((section81 valueAt: 'aserrin') = 10).
	self assert: ((section81 valueAt: 'bagazo') = 25).
	self assert: ((section81 valueAt: 'biodiesel') = 50).
	self assert: ((section81 valueAt: 'bioetanol') = 75).
	self assert: ((section81 valueAt: 'carbon_mineral') = 100).
	grid := section81 getGridNamed: 'grid-83'.
	self assert: ((grid getAllValuesFor: 'nombreMedida') includes: 'WEFG-458').
	self assert: ((grid getAllValuesFor: 'usoPrincipal') includes: '03').
	self assert: ((grid getAllValuesFor: 'energetico_evitado') includes: '12').
	self assert: ((grid getAllValuesFor: 'nombreMedida') includes: 'TEE-988').
	self assert: ((grid getAllValuesFor: 'usoPrincipal') includes: '04').
	self assert: ((grid getAllValuesFor: 'energetico_evitado') includes: '05').