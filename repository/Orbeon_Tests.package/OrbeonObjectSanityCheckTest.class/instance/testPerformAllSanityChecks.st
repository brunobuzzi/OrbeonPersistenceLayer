other
testPerformAllSanityChecks
	"Iterate over all field values and check if are contained in any Orbeon Form Instance and viceversa.
	It could be a time consuming operation"

	(self getOrbeonApplicationClass selectInCache: [:each | each isOrbeonApplication]) do: [:application | | visitor |
		visitor := OrbeonSanityCheckVisitor new.
		[visitor visitApplication: application] on: OrbeonSanityCheckException do: [:ex | self assert: false].
	].