permissions
addAnyOnePermissionTo: permissions fromString: stringOperations
	"The receiver add permissions to OrbeonPermissions <permissions> took from string <stringOperations>.
	<stringOperations> format: 'read update delete' "

	(stringOperations subStrings: ' ') do: [:oper | permissions add: oper to: 'anyone']