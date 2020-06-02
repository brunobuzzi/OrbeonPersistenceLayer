streaming
contents
	| contents |

	contents := OrderedCollection new.
	(instancesReadStream isNil and: [draftsReadStream isNil and: [fieldsReadStreams isNil]]) ifTrue: [^contents].

	draftsReadStream ifNotNil: [contents addAll: draftsReadStream].
	instancesReadStream ifNotNil: [contents addAll: draftsReadStream].

	^contents