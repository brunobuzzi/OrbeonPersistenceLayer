*orbeon
validateUser: username password: password

	^OrbeonUser cache anySatisfy: [:each | each name = username and:[each password = (GRPlatform current secureHashFor: password)]]