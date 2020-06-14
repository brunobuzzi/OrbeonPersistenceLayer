attachments path
getAllAttachmentsPaths
	| paths |

	paths := OrderedCollection new.

	paths add: baseAttachmentPath.

	pathForAttachments keysAndValuesDo: [:appName :formsDictionary |
		formsDictionary keysAndValuesDo: [:formName :path |
			paths add: (Array with: appName with: formName with: path).
		].
	].

	^paths