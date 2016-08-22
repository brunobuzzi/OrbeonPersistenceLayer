other
cloneForAudit
	"The receiver answer a new cloned instance of it's self for audit purpose.
	The section structure is NOT cloned but can be reconstructed from <xmlString>"
"#depreceted"
	| clone |

	clone := super cloneForAudit.
	clone username: username;
		groupname: groupname;
		draft: draft;
		isValid: isValid.

	^clone