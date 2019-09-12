form-field-value
printAllFieldValuesAsPairs
	| stream |

	stream := PrintStream on: String new.
	self printAllFieldValuesAsPairsOn: stream.

	^stream contents