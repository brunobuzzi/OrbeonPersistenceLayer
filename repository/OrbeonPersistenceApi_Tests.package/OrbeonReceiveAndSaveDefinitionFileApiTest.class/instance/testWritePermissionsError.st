other
testWritePermissionsError
	| temPath |

	temPath := testRoot getTempPath.

	System performOnServer: 'chmod -R 000 ', temPath.

	self should: [apiOperation doIt] raise: OrbeonOSException.

	System performOnServer: 'chmod -R 777 ', temPath.