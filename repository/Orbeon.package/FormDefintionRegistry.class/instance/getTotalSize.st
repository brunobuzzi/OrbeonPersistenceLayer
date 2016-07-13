other
getTotalSize
	| total |

	total := 0.

	currentVersions do: [:each | total := total + each instances size].

	oldVersions do: [:each | total := total + each instances size].

	^total