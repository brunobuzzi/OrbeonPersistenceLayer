other
moveFromTempPathFileOf: anOrbeonFormDefinition
	"The receiver move all files from temp path to the actual path of <anOrbeonFormDefinition>"
	| filesToMove defaultFilePath |

	filesToMove := (((GsFile contentsOfDirectory: self apiConfiguration getTempPath onClient: false) "get all current files in <path>"
			reject: [:eachPathFile | ((eachPathFile subStrings: '/') last = '.') or: [(eachPathFile subStrings: '/') last = '..']])
			collect: [:each | (each subStrings: '/') last])
			select: [:fileName | fileName includesSubstring: anOrbeonFormDefinition id].

	filesToMove isEmpty ifTrue: [^self]. "no files to move"

	defaultFilePath := self apiConfiguration getSavedDefinitionsPathFor: anOrbeonFormDefinition formName in: anOrbeonFormDefinition getApplicationName.

	filesToMove do: [:fileName | | cmd |
		cmd := 'mv ',self apiConfiguration getTempPath, '/', fileName, ' ', defaultFilePath.
		System performOnServer: cmd]