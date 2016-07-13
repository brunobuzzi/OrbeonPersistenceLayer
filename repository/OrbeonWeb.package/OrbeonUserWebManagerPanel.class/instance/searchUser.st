other
searchUser

	userCollection := (OrbeonUser cache select: [:each | username match: each name]) asOrderedCollection