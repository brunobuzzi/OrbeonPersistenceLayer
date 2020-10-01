other
createClone
	| cloneOperation uuid application |

	uuid := UUID new asString.
	cloneOperation := OrbeonFormDefinitionDuplicateApi newWithXml: self getOrbeonXmlXpathFrom2017_2 templateClass formDefinition_example_4 id: uuid.
	cloneOperation
		group: 'admin';
		user: 'admin';
		setUserCredentialsFrom: nil.

	cloneOperation doIt.

	application := self getOrbeonApplicationClass applicationNamed: 'agesic'.

	^application getSavedDefinitionWithId: uuid ifNone: [self assert: false]