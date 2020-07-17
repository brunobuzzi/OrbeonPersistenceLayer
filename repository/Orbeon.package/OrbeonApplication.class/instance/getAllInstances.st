all forms
getAllInstances
	"Answer a collection with all form instances <OrbeonFormInstance> of the receiver.
	Collect instances from all receiver's registries <FormDefinitionRegistry>"
	| all |

	all := OrderedCollection new.
	definitionsRegistry do: [:each | all addAll: each getAllInstances].

	^all