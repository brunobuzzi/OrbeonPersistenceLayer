db import
importDataOfFormId: formId form: formName app: app
	"The receiver import into Orbeon Application <anOrbeonApplication> a form named <formDefinitionName> with id <formId>"
	| dbInstanceArray definition |

	dbInstanceArray := (self execute: (mySqlReader sqlFormDataWithId: formId)) subStrings: String tab.
	definition := self getOrbeonApplicationClass formDefinitionNamed: formName in: app.

	definition ifNil:[^OrbeonDefinitionNotFoundException signal: 'Definition named [', formName, '] for app [', app, '] not found'].

	^(self generateFormInstanceOf: definition from: dbInstanceArray)
		definition: definition;
		addToDefinition;
		updateFrom: dbInstanceArray; "update common database values - values common to all type of forms"
		processXML; "update specific form values - change for each type of form "
		yourself