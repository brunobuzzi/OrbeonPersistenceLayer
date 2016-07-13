published definition
getAllInstances
	""
	| all |

	all := OrderedCollection new.

	self getAllVersion do: [:each | all addAll: each instances asArray].

	^all