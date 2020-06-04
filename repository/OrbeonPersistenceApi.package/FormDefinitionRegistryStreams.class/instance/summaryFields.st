query nodes
summaryFields

	^queryNodes select: [:each | each isSummary] thenCollect: [:each | each name]