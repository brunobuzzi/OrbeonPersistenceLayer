random generator
peekRandomStringOfSize: size
	| stream stringPalette random |

	random := Random new.
	stringPalette := 'qwertyuioplkjhgfdsazxcvbnmQWERTYUIOPASDFGHJKLZXCVBNM'.
	stream := ''.

	1 to: size do: [:i | 
		stream := stream, (stringPalette randomPeek: random) asString.
	].

	^stream