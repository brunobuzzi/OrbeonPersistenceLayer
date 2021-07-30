forms - builder
buildNoProcessFormInstanceNamed: definitionName withXml: instanceXmlString definitionXml: definitionXmlString in: app process: aBpmProcessInstance
	"The receiver create <anOrbeonFormInstance> of form definition named <definitionName> of Orbeon Application named <app> using the method <xmlMethodName> to get the XML string of the form"
	| formInstance |

	formInstance := self buildFormInstanceNamed: definitionName withXml: instanceXmlString definitionXml: definitionXmlString in: app.

	^formInstance