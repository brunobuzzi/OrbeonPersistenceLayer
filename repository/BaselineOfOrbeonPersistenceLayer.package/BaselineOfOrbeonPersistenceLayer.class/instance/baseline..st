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
		spec baseline: 'AbstractApplicationObjects' with: [
			spec repository: 'github://brunobuzzi/AbstractApplicationObjects:master' ].

       spec package: 'OrbeonLDAP'.
       spec package: 'Orbeon' with: [spec requires: #('XMLParser' 'XPath' 'OrbeonLDAP')].
       spec package: 'OrbeonPersistenceApi' with: [spec requires: #('Orbeon')].
       spec package: 'OrbeonWeb' with: [spec requires: #('Orbeon' 'OrbeonLDAP')].
       spec package: 'Orbeon_Tests' with: [spec requires: #('Orbeon')].
		]