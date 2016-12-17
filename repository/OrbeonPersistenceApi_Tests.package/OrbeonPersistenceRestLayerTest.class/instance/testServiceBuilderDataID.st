other
testServiceBuilderDataID
 "/crud/orbeon/builder/data/{1}/data.xml"
	| result |

	result := restClient get: 'http://192.168.29.142:8787/orbeon-gemstone-api/crud/orbeon/builder/data/31c47749d8149acdbff83f16333d527e9ad21844/data.xml'.


	self assert: true