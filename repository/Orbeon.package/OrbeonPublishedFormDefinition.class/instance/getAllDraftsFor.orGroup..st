form instances
getAllDraftsFor: user orGroup: group
	"The receiver answer all current saved drafts of with username <user> or groupname <group>"
	| allDrafts |

	allDrafts := OrderedCollection new.

	drafts do: [:collection | allDrafts addAll: (collection select: [:each | each username = user or: [each groupname = group]])].

	^allDrafts