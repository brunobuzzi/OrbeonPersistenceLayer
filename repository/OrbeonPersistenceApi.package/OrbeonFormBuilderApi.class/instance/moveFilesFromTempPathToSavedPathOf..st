other
moveFilesFromTempPathToSavedPathOf: anOrbeonFormDefinition
	"The receiver move all files from temp path to the actual path of <anOrbeonFormDefinition>"
	| filesToMove defaultFilePath currentFiles |

	currentFiles := GsFile contentsOfDirectory: systemRoot getTempPath onClient: false. "get all current files in <path>"	
	currentFiles ifNil: [DirectoryStructureNotPresentException signal: 'Directory Structure to Store Forms attachments on disk has not been created'].

	filesToMove := ((currentFiles reject: [:eachPathFile | ((eachPathFile subStrings: '/') last = '.') or: [(eachPathFile subStrings: '/') last = '..']]) collect: [:each | (each subStrings: '/') last])
			select: [:fileName | fileName includesSubstring: anOrbeonFormDefinition id].

	filesToMove isEmpty ifTrue: [^self]. "no files to move"

	defaultFilePath := systemRoot getSavedDefinitionsPathFor: anOrbeonFormDefinition formName in: anOrbeonFormDefinition getApplicationName.

	filesToMove do: [:fileName | | cmd |
		cmd := 'mv ',systemRoot getTempPath, '/', fileName, ' ', defaultFilePath.
		System performOnServer: cmd]