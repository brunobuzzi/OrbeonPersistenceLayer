authentication
validateUser: username password: password on: aBpmSystemRoot
	"The receiver answer <true> or <false> for the combination of user name <username> and password <password>"

	password isEmpty ifTrue: [^false]. "the password can not be empty (bpm issue #766) - secure hash does not support empty string"

	^aBpmSystemRoot usersAnySatisfy: [:each | each name = username and:[each password = password sha256Sum]]