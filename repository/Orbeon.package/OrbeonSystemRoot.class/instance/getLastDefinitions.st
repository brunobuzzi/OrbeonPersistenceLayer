forms - published
getLastDefinitions
	| lasts |

	lasts := OrderedCollection new.
	applications  do: [:each | lasts addAll: each getLastDefinitions].

	^lasts