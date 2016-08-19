random generator
peekRandomEmailOfSize: size

	^(self peekRandomStringOfSize: size) , '@',(self peekRandomStringOfSize: size), '.com'