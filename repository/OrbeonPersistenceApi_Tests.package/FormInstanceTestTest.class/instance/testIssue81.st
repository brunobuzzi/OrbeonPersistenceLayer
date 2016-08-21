other
testIssue81
	"https://github.com/brunobuzzi/OrbeonPersistenceLayer/issues/81"
	| application definition searchApi |

	application := self getOrbeonApplicationClass applicationNamed: 'agesic' ifNone: [^self signalNoApplicationException: 'agesic'].
	definition := application definitionNamed: 'test' ifNone: [^self signalNoFormException: 'test' app: 'agesic'].

	searchApi := OrbeonInstanceSearchApi for: application formName: 'test'.

	searchApi xmlSearchDefinitionDocument: (XMLDOMParser parse: self getXmlQuery);
					createQueryNodes;
					getPageSize;
					getPageNumber;
					group: 'admin';
					user: 'admin'.

	searchApi executeQuery.

	searchApi generateXmlAnswer.

	self assert: true.