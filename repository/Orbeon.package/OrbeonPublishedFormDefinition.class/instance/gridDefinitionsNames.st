field definitions
gridDefinitionsNames
	"Answer a collection with all grid definitions names of the receiver."

	^self gridDefinitions collect: [:each | each name]