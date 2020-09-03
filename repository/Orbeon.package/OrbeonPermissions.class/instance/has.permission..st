other
has: roleName permission: permissionName
	"Answer whether or not the receiver has the permission <permissionName> for the role <roleName>.
	First check for the permission collection of -anyone- then check in the specific collection of the role <roleName>"
	| assignedPermissions orbeonRoles |

	assignedPermissions :=  OrderedCollection new.
	orbeonRoles := OrderedCollection with: 'anyone' with: roleName.

	orbeonRoles do: [:eachRole | 
		permissions at: eachRole ifPresent: [:permissionsCollection | assignedPermissions addAll: permissionsCollection] ifAbsent: []].

	^assignedPermissions includes: permissionName