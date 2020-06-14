*orbeon
fullBackupOrbeonPersistenceLayerTo: lz4PathFile externalFilesTo: externalPath
	"The receiver perform a full backup of Orbeon Persistence Layer system.
	1) Perform a backup of GemStone/S database compressed as LZ4.
	2) Perform a backup of external files attached to forms"
	| allAttachments baseAttachment |

	self fullBackupLz4CompressedTo: lz4PathFile.

	"answer <anOrderedCollection> where the first element is the <base attachment path> <aString> and the following elements are anArray of 3, where:
	1- application name, 2- form name, 3- path"
	allAttachments := self getOrbeonWebServerConfiguration getAllAttachmentsPaths. 
	baseAttachment := allAttachments first.

	allAttachments allButFirst do: [:array | | appName formName path |
		appName := array at: 1.
		formName := array at: 2.
		path := array at: 3.
		self createTarFileAs: (externalPath, '/' , appName , '_', formName, '.tar') compress: path
	].