other
setUp
	| application xPathManager |

	super setUp.

	self getOrbeonWebServerConfiguration orbeonFormReaderClass: OrbeonXPathFormReader2019_1.

	xPathManager := self getOrbeonXmlXpathFrom2017_2.
	application := self getOrbeonApplicationClass getExistingApplicationOrCreateNewNamed: 'charts'.
	"application unregisterDefinitionNamed: 'charts-forms'."
	form := application definitionNamed: 'charts-forms' ifNone: [self createFormStructureFor: 'charts-forms' in: 'charts' definitionTemplate: #formDefinition_chartForm title: 'Charts Form' xPathVersion: xPathManager].

	form processXMLDefinitionFor: xPathManager