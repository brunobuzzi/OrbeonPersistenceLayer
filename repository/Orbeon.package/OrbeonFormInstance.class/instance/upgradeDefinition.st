upgrade definition
upgradeDefinition
	"The receiver upgrade its definition <anOrbeonPublishedFormDefinition> to the latest of the same version.
	In order to properly execute this method see comments of issue #243."
	| newDefinition oldDefinition |

	newDefinition := self getApplication definitionNamed: self formName version: version ifNone: [^definition].
	oldDefinition := definition.
	definition removeInstance: self. "this set <definition> to <nil>"
	definition := newDefinition.

	"All <OrbeonFieldValueHolder> have been already processed with the previous definition <oldDefinition> but the new definition <newDefinition> has no holder --> we set the flag to <false> and holder will be added"
	fieldsValues do: [:valueHolder | valueHolder alreadyAddedToFormDefinition: false]. 

	self buildForm. "update fields based on the new definition"
 
	self removeFieldsValuesIn: oldDefinition.