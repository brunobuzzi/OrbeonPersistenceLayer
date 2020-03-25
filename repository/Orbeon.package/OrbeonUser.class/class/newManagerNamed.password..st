other
newManagerNamed: aString password: password

	^(self newNamed: aString password: password)
			managerRole: OrbeonManagerAdminRole new;
			yourself