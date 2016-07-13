other
cloneForAudit
	"The receiver answer a new cloned instance of it's self for audit purpose.
	The section structure is NOT cloned but can be reconstructed from <xmlString>"
	| clone |

	clone := self class new initialize.
	clone id: id;
	"	form: form;
		app: app;"
		createdTime: createdTime;
		modifiedTime: modifiedTime;
		modifiedUser: modifiedUser;
		deleted: deleted;
		xmlString: xmlString;
		version: version.

	^clone