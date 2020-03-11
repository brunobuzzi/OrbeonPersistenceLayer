db connection
execute: aString
	"Execute the command <aString> in the Linux Server whereas GemStone/S is installed"
	| result strippedResult |

	result := System performOnServer: aString.

	(result includesSubString: 'Warning: Using a password on the command line interface can be insecure.')
	ifFalse: [^result].

	strippedResult := result allButFirst: 72. "we remove this trash string of the new mysql client (5.5)"

	^strippedResult