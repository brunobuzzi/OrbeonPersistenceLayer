other
contents
	| contents |

	contents := OrderedCollection new.
	(instancesReadStream isNil and: [draftsReadStream isNil and: [fieldsReadStreams isNil]]) ifTrue: [^contents].

	draftsReadStream ifNotNil: [contents addAll: draftsReadStream contents].
	instancesReadStream ifNotNil: [contents addAll: instancesReadStream contents].
	fieldsReadStreams ifNotNil: [contents addAll: fieldsReadStreams contents].

	^contents