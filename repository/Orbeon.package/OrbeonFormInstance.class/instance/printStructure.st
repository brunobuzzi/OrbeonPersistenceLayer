other
printStructure
	| stream |

	stream := PrintStream on: String new.

	self printStructureOn: stream.

	^stream contents