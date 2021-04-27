tests
testPublish

	(self apiNamed: 'library') doItIfNotFound: [self assert: false].

	(self apiNamed: 'formDefinition') doItIfNotFound: [self assert: false].