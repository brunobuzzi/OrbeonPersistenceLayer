private
setBasicObjects
	| application adminUser |

	application := self getExistingApplicationOrCreateNewNamed: self adminsApplicationName.

	adminUser := self newUsername: self adminUserName password: self adminPassword.

	adminUser addRol: self adminRoleName