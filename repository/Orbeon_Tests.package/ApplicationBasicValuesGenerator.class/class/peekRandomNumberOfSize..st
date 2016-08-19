random generator
peekRandomNumberOfSize: size
	| stream stringPalette random |

	random := Random new.
	stringPalette := '0123456789'.
	stream := PrintStream on: String new.

	1 to: size do: [:i | 
		stream nextPut: (stringPalette randomPeek: random).
	].

	^Number fromString: stream contents