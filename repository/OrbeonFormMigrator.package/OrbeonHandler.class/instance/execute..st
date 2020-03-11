db connection
execute: aString
	"Execute the command <aString> in the Linux Server whereas GemStone/S is installed"
	| result |

	result := System performOnServer: aString.

	mySqlReader isFirstLineDirty ifTrue: [result := result copyFrom: mySqlReader startOfDirtyText to: result size].

	^result