other
newManagerNamed: aString password: password

	^(self newNamed: aString password: password)
			managerRole: OrbeonManagerUserRole new;
			yourself