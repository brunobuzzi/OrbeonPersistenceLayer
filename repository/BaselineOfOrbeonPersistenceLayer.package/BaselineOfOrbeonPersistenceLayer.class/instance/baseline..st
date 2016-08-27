baseline
baseline: spec
  <baseline>

   spec
     for: #'common'
     do: [
		spec project: 'XMLParser' with: [
			spec className: 'ConfigurationOfXMLParser';
				loads: #('default');
				versionString: #'release-2.7.7';
				repository: 'http://www.smalltalkhub.com/mc/PharoExtras/XMLParser/main'].
		spec project: 'XPath' with: [
			spec className: 'ConfigurationOfXPath';
				loads: #('default');
				versionString: #'stable';
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
		spec baseline: 'Sewaf' with: [
			spec repository: 'github://brunobuzzi/SEWAF:master/repository' ].
		spec baseline: 'Seaside3' with: [
			spec repository: 'github://GsDevKit/Seaside31:gs_master/repository' ].

       spec package: 'OrbeonLDAP'.
       spec package: 'Orbeon' with: [spec requires: #('AbstractApplicationObjects' 'XMLParser' 'XPath' 'OrbeonLDAP')].
       spec package: 'OrbeonPersistenceApi' with: [spec requires: #('Orbeon' 'Seaside3' 'XMLWriter')].
       spec package: 'OrbeonWeb' with: [spec requires: #('Sewaf' 'Orbeon' 'OrbeonLDAP' 'Seaside3')].
       spec package: 'Orbeon_Tests' with: [spec requires: #('Orbeon')].
		]