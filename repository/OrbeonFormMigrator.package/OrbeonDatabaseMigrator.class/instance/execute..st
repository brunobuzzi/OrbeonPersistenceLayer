db connection
execute: aString
	"Execute the command <aString> in the Linux Server whereas GemStone/S is installed"
	| result |

	result := System performOnServer: aString.

	sqlReader isFirstLineDirty ifTrue: [result := result copyFrom: sqlReader startOfDirtyText to: result size].

	^result