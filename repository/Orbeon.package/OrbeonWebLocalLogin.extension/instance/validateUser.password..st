*orbeon
validateUser: username password: password
	"The receiver answer <true> or <false> for the combination of user name <username> and password <password>"

	password isEmpty ifTrue: [^false]. "the password can not be empty (bpm issue #766) - secure hash does not support empty string"

	^OrbeonUser cache anySatisfy: [:each | each name = username and:[each password = (GRPlatform current secureHashFor: password)]]