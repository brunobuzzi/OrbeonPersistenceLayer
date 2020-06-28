other
testFileDoesNotExist

	self should: [apiOperation doIt] raise: OrbeonGsFileDoesNotExistException.