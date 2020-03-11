other
showSummaryWith: aDictionary
	| summary |

	summary := ''.

	(self buildSummaryWith: aDictionary) do: [:each | summary := summary, each printResume, String lf].

	^summary