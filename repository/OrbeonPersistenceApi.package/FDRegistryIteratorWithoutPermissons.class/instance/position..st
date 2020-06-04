stream
position: integerShift
	"The receiver skip to <integerShift> position. Each version in <versions> collection eventually could have a ReadStream associated to it's instances "

	currentStream := ReadStreamPortable on: (definitionRegistry instancesSetOfVersion: versionNumber).

	currentStream position: integerShift