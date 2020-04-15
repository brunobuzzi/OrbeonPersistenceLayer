render
storeReverseTranslationFor: translatedCollection withOriginalNames: originalCollection
	"The receiver store the as reverse translation the collection <translatedCollection> witn the original one <originalCollection>. Get the instance <anApplicationReverseTranslation> and store the values.
	When GUI strings are used as arguments to query the Domain Model (always in english) we have to get the original/english value from the translated one 
		to perform the query with the right argument."

	translatedCollection keysAndValuesDo: [:index :translatedString | self reverseTranslation atTransatedString: translatedString put: (originalCollection at: index)].