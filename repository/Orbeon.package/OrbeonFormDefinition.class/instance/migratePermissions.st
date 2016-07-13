permissions
migratePermissions
	"This method was used to migrate the old permission structure to the new permissions structure (class OrbeonPermissions)"
	| newPermissions |

	newPermissions := OrbeonPermissions new.

	permissions keysAndValuesDo: [:keyStringPermission :arrayRole | 
		newPermissions addAll: (keyStringPermission subStrings: ' ') toAll: arrayRole.
	].

	"permissions := newPermissions. "

	^newPermissions