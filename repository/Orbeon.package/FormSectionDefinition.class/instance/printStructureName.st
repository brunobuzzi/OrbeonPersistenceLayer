other
printStructureName

	libraryComponent ifNil: [^name].

	^libraryComponent name, ' (L: ', name, ')'