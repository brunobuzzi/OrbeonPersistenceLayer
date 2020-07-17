published definition
addCurrentVersion: newFormDefinition
	"The receiver set <newFormDefinition> as the current version. 
	First check if a definition with the same version exist. If not <newFormDefinition> is added to <currentVersions>.
	If exist then move the current version to <oldVersion> collection and set <newFormDefinition> as the current version in <currentVersions> collection"
	| oldVersion |

	newFormDefinition setRegistry: self. 
	oldVersion := self getDefinitionWithSameVersionAs: newFormDefinition.
	"there is no registered definition with the same version as <newFormDefinition>"
	oldVersion ifNil: [^currentVersions add: newFormDefinition]. 

	"the current version is removed from <currentVersions> and repleced with <newFormDefinition>"
	currentVersions remove: oldVersion. 
	oldVersions add: oldVersion. 
	^currentVersions add: newFormDefinition