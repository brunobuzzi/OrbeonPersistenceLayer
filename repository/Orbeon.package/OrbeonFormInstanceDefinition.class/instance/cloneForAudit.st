other
cloneForAudit
	"The receiver answer a new cloned instance of it's self for audit purpose.
	The section structure is NOT cloned but can be reconstructed from <xmlString>"
	| clone |

	clone := super cloneForAudit.
	clone username: username;
		groupname: groupname;
		isPublished: isPublished;
		draft: draft.

	^clone