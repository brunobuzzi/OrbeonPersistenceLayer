saved forms
getSavedDefinition: formName app: app withId: id
	"Answer the saved definition named <formName> with id <id> in orbeon application named <app>.
	If any search fail then rise an exception"
	| application |

	application := self applicationNamed: app ifNone: [^NoApplicationException signal: 'No application named [', app,'] was found'].

	^application 
		getSavedDefinitionFor: formName 
		withId: id 
		ifNone: [^NoOrbeonFormException signal: ('For form named [', formName, '] was found in application [', app, '] with id [', id, ']')].