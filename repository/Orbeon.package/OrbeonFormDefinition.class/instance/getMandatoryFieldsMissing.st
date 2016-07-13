other
getMandatoryFieldsMissing
	"Answer a collection of mandatory fields missing needed to use Orbeon Form Processes.
	All these fields must be included in the Orbeon Form Definition in order the Form Worflow work correctly"
	| missingManFields |

	missingManFields := OrderedCollection new.

	self getFieldNamed: 's' ifNone: [missingManFields add: 's'].
	self getFieldNamed: 'k' ifNone: [missingManFields add: 'k'].
	self getFieldNamed: 'oop' ifNone: [missingManFields add: 'oop'].
	self getFieldNamed: 'uuid' ifNone: [missingManFields add: 'uuid'].
	self getFieldNamed: 'assignmentOop' ifNone: [missingManFields add: 'assignmentOop'].
	self getFieldNamed: 'username' ifNone: [missingManFields add: 'username'].
	self getFieldNamed: 'rol' ifNone: [missingManFields add: 'rol'].
	self getFieldNamed: 'formId' ifNone: [missingManFields add: 'formId'].

	^missingManFields