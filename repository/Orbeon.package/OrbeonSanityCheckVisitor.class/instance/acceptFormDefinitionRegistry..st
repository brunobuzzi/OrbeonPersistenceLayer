other
acceptFormDefinitionRegistry: aFormDefinitionRegistry

	aFormDefinitionRegistry currentVersionsDo: [:publishedForm | publishedForm acceptVisitor: self].
	aFormDefinitionRegistry oldVersionsDo: [:publishedForm | publishedForm acceptVisitor: self].
	aFormDefinitionRegistry savedDefinitionsDo: [:savedForm | savedForm acceptVisitor: self].

	aFormDefinitionRegistry instancesSetDo: [:formInstance | formInstance acceptVisitor: self].
	aFormDefinitionRegistry instancesVersionSetDo: [:formInstance | formInstance acceptVisitor: self].

	self checkFormInstancesQuantityFor: aFormDefinitionRegistry