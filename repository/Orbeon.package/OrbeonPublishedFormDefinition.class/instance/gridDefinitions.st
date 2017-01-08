field definitions
gridDefinitions
	"Answer a collection with all grid definitions <FormGridDefinition> of the receiver. It collect all grids from Section Definitions"
	| grids |

	grids := OrderedCollection new.

	sectionDefinitions do: [:each | grids addAll: each gridDefinitions].

	^grids