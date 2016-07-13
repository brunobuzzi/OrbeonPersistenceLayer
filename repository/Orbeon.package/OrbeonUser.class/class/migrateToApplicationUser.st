other
migrateToApplicationUser

	self cache do: [:eachUser | 
		eachUser class migrateTo: OrbeonUser.
		eachUser migrate]