other
modifyRol: rolName value: aBoolean

	aBoolean ifFalse: [^selectedUser removeRol: rolName].

	^selectedUser addRol: rolName