other
testPerformAllSanityChecks
	"Iterate over all field values and check if are contained in any Orbeon Form Instance and viceversa.
	It could be a time consuming operation"
	| root |

	root := ((Smalltalk at: #SystemRoot) class == OrbeonSystemRoot) 
				ifTrue: [Smalltalk at: #SystemRoot]
				ifFalse: [(Smalltalk at: #SystemRoot) orbeonManager].
	(root applicationsSelect: [:each | each isOrbeonApplication]) do: [:application | | visitor |
		visitor := OrbeonSanityCheckVisitor new.
		[visitor visitApplication: application] on: OrbeonSanityCheckException do: [:ex | self assert: false].
	].