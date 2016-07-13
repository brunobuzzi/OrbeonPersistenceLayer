other
printStructureOn: aPrintStream count: counter
	"Print the structure of the receiver on stream <aPrintStream>. It use the counter <counter> to iden the resulting string.
	1- Iterate over each grid iterations (aDictionary) and print each of them."

	| iterationIndex |

	1 to: (counter + 1) do: [:each | aPrintStream nextPutAll: String tab].
	aPrintStream nextPutAll: '(', name, ')'.
	aPrintStream nextPutAll: String lf.

	iterationIndex := 0.
	gridIterations do: [:eachIterationDict | "iterate over grid iteration"
		iterationIndex := iterationIndex + 1.
		1 to: (counter + 2) do: [:each | aPrintStream nextPutAll: String tab].
		aPrintStream nextPutAll: '(iteration-', iterationIndex printString, ')'. "put the number of the current iteration"
		aPrintStream nextPutAll: String lf.
		eachIterationDict keysAndValuesDo: [:key :value | "print the fields values of each iteration"
			1 to: (counter + 3) do: [:each | aPrintStream nextPutAll: String tab].
			aPrintStream nextPutAll: key, ': ', value.
			aPrintStream nextPutAll: String lf.].
		].