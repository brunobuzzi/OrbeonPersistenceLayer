baseline
baseline: spec
  <baseline>

   spec
     for: #'common'
     do: [
		spec baseline: 'XMLWriter' with: [
			spec repository: 'github://GsDevKit/XML-XMLWriter:gemstone/filetree'].
		spec baseline: 'XMLParser' with: [
			spec repository: 'github://GsDevKit/XML-XMLParser:gemstone/filetree'].
		spec baseline: 'XPath' with: [
			spec repository: 'github://GsDevKit/XML-XPath:gemstone/filetree'].
		spec baseline: 'AbstractApplicationObjects' with: [
			spec repository: 'github://brunobuzzi/AbstractApplicationObjects:master/repository' ].
		spec baseline: 'AbstractBIObjects' with: [
			spec repository: 'github://brunobuzzi/AbstractBIObjects:master/repository' ].
		spec baseline: 'Ston' with: [
			spec repository: 'github://GsDevKit/ston:gemstone/repository' ].
		spec baseline: 'Sewaf' with: [
			spec repository: 'github://brunobuzzi/SEWAF:master/repository' ].
		spec baseline: 'Seaside3' with: [
			spec loads: #('Core' 'REST' 'Seaside-Tools-Web');
				repository: 'github://SeasideSt/Seaside:master/repository' ].

		spec 
				package: 'Orbeon' with: [spec requires: #('AbstractApplicationObjects' 'AbstractBIObjects' 'XMLParser' 'XPath')];
				package: 'OrbeonBusinessIntelligence' with: [spec requires: #('AbstractBIObjects' 'Orbeon')];
				package: 'OrbeonFormXmlReader' with: [spec requires: #('Orbeon')];
				package: 'OrbeonFormComparator' with: [spec requires: #('Orbeon')];
				package: 'OrbeonFormMigrator' with: [spec requires: #('Orbeon' 'OrbeonFormComparator' 'OrbeonFormXmlReader')];
				package: 'OrbeonFormExport' with: [spec requires: #('Orbeon')];
				package: 'Orbeon_Templates' with: [spec requires: #('AbstractApplicationObjects')];
				package: 'OrbeonPersistenceApi' with: [spec requires: #('Orbeon' 'OrbeonFormXmlReader' 'OrbeonFormMigrator' 'Ston' 'Seaside3' 'XMLWriter' 'XMLParser' 'XPath')];
				package: 'OrbeonWeb' with: [spec requires: #('Sewaf' 'Orbeon' 'Seaside3' 'OrbeonFormMigrator' 'OrbeonFormExport' 'OrbeonFormXmlReader')];
				package: 'Orbeon_Tests' with: [spec requires: #('Orbeon' 'Orbeon_Templates' 'OrbeonFormComparator' 'OrbeonFormMigrator' 'OrbeonFormXmlReader')];
				package: 'OrbeonFormMigrator_Tests' with: [spec requires: #('Orbeon' 'Orbeon_Templates' 'OrbeonFormMigrator')];
				package: 'OrbeonPersistenceApi_Tests' with: [spec requires: #('OrbeonPersistenceApi' 'Orbeon_Templates')].

		spec
			group: 'core' with: #('Orbeon' 'OrbeonFormXmlReader'); "to load" "aMetacello load: #('core' 'rest' 'web' 'test')"
			group: 'rest' with: #('OrbeonPersistenceApi');
			group: 'web' with: #('OrbeonWeb');
			group: 'test' with: #('Orbeon_Templates' 'Orbeon_Tests');
			group: 'default' with: #('core' 'rest' 'web' 'test')."to load" "aMetacello load: #('default'')"
		]