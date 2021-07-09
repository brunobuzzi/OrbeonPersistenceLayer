other
migrateFrom: oldUser instVarMap: aMap

	super migrateFrom: oldUser instVarMap: aMap.

	centralUser := self defaultApplicationUserClass getExistingOrNewUserNamed: name.
	centralUser password: password.