published def instances
getAllInstancesOf: version
	| currentInstances oldInstances |

	currentInstances := (self getDefinitionWithVersion: version) ifNil: [#()] ifNotNil: [:def | def instances].
	oldInstances := (self getOldDefinitionWithVersion: version) ifNil: [#()] ifNotNil: [:def | def instances].

	^currentInstances asArray, oldInstances asArray