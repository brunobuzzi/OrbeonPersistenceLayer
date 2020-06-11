other
numberOfInstances
	| total |

	total := 0.

	currentVersions do: [:each | total := total + each instancesSize].

	oldVersions do: [:each | total := total + each instancesSize].

	^total