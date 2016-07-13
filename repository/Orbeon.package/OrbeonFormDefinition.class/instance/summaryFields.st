other
summaryFields
	"Answer a collection with all field names that are the summary of the receiver"
	| summaries |

	summaries := OrderedCollection new.
	sectionDefinitions do: [:eachDef | summaries addAll: (eachDef summaryFields collect: [:each | each name])].

	^summaries