streaming
contents

	(instancesReadStream isNil and: [draftsReadStream isNil and: [fieldsReadStreams isNil]]) ifTrue: [^OrderedCollection new].