tests
testPublish

	(self apiNamed: 'savedLibrary') doIt.

	(self apiNamed: 'library') doItIfNotFound: [self assert: false].

	(self apiNamed: 'savedDefinition') doIt.

	(self apiNamed: 'formDefinition') doItIfNotFound: [self assert: false].