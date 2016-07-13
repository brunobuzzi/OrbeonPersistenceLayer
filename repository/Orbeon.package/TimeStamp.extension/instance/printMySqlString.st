*orbeon
printMySqlString

	^self date year printString, '-', 
		self date monthIndex printString, '-', 
		self date day printString, ' ', 
		self time printString