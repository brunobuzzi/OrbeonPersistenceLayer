applications
getLatestSavedDefinition: formName app: app ifNone: aBlock
	"Answer the lastest saved definition named <formName> in orbeon application named <app>.
	If any search fail then rise an exception"
	| application |

	application := self applicationNamed: app ifNone: [^aBlock value].

	^application getLatestSavedDefinition: formName ifNone: [^aBlock value]