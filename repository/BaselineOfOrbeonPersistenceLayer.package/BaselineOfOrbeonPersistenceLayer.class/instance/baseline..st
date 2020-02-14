baseline
baseline: spec
  <baseline>

   spec
     for: #'common'
     do: [
		spec project: 'XMLParser' with: [
			spec className: 'ConfigurationOfXMLParser';
				loads: #('default');
				versionString: #stable;
				repository: 'http://www.smalltalkhub.com/mc/PharoExtras/XMLParser/main'].
		spec project: 'XPath' with: [
			spec className: 'ConfigurationOfXPath';
				loads: #('default');
				versionString: #stable;
				file: 'ConfigurationOfXPath';
				repository: 'http://www.smalltalkhub.com/mc/PharoExtras/XPath/main'].
		spec project: 'XMLWriter' with: [
			spec className: 'ConfigurationOfXMLWriter';
				versionString: #stable;
				file: 'ConfigurationOfXMLWriter';
				repository: 'http://smalltalkhub.com/mc/PharoExtras/XMLWriter/main';
				loads: #('Core').
				].

		spec baseline: 'AbstractApplicationObjects' with: [
			spec repository: 'github://brunobuzzi/AbstractApplicationObjects:master/repository' ].
		spec baseline: 'Ston' with: [
			spec repository: 'github://GsDevKit/ston:gemstone/repository' ].
		spec baseline: 'Sewaf' with: [
			spec repository: 'github://brunobuzzi/SEWAF:master/repository' ].
		spec baseline: 'Seaside3' with: [
			spec loads: #('Core' 'REST' 'Seaside-Tools-Web');
				repository: 'github://GsDevKit/Seaside31:gs_master/repository' ].
		spec baseline: 'Jasvgi' with: [
			spec repository: 'github://brunobuzzi/JASVGI:master/repository'].

		spec 
				package: 'Orbeon' with: [spec requires: #('AbstractApplicationObjects' 'XMLParser' 'XPath')];
				package: 'Orbeon_Templates' with: [spec requires: #('AbstractApplicationObjects')];
				package: 'OrbeonPersistenceApi' with: [spec requires: #('Orbeon' 'Ston' 'Seaside3' 'XMLWriter' 'XMLParser' 'XPath')];
				package: 'OrbeonWeb' with: [spec requires: #('Sewaf' 'Orbeon' 'Seaside3' 'Jasvgi')];
				package: 'Orbeon_Tests' with: [spec requires: #('Orbeon' 'Orbeon_Templates')].

		spec
			group: 'core' with: #('Orbeon'); "to load" "aMetacello load: #('core' 'rest' 'web' 'test')"
			group: 'rest' with: #('OrbeonPersistenceApi');
			group: 'web' with: #('OrbeonWeb');
			group: 'test' with: #('Orbeon_Templates' 'Orbeon_Tests');
			group: 'default' with: #('core' 'rest' 'web' 'test')."to load" "aMetacello load: #('default'')"
		]