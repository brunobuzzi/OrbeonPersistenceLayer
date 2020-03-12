queries
executeQueryWithSearchCriteria
	"The receiver answer a collection with the result of applying the collection of queries to the form definition <anOrbeonFormDefinition>"
	| gsQueries result andResult orResult allDefinitions |

	total := 0.
	result := Dictionary new.
	"create all <GsQuery> for each field with a search value"
	gsQueries := self createGsQueriesFor: queryNodes. "aDictionary (fieldName-->aGsQuery)"
	allDefinitions := self getAllDefinitions.
	gsQueries keysAndValuesDo: [:fieldName :gsQuery | | rcIdentitySet |
		result at: fieldName put: OrderedCollection new.
		allDefinitions do: [:eachDef |
			rcIdentitySet := eachDef fieldInstancesOf: fieldName."get the collection of ALL field's values of <fieldName>"
			gsQuery on: rcIdentitySet. "set the collection of the <GsQuery>"
			(result at: fieldName) addAll: gsQuery queryResult.
			total := total + rcIdentitySet size]]."Excecute the <GsQuery> and store it on <result> dictionary"

	result isEmpty ifTrue: [^resultCollection := OrderedCollection new].

	"perform an OR search if OR is setted - (OR or AND search is useful when the search has more than one search criteria)"
	((self defaultOrbeonApiConfiguration typeSearchIsOr: lastFormDefinition formName in: application applicationName) or: [self isGenericSearch])
	ifTrue: [orResult := Set new.
		result do: [:queryResult | orResult addAll: queryResult].
		orResult  := (orResult collect: [:each | each parentObject]) asOrderedCollection.
		^self filterAuthorizedInstancesIn: orResult "filter by permissions"].

	"perform an AND search"
	andResult := (OrderedCollection withAll: (result at: result keys asArray first)) collect: [:each | each parentObject].

	result asOrderedCollection allButFirst do: [:queryResult | andResult := andResult intersection: (queryResult collect: [:each | each parentObject])].
	"filter by permissions"
	^self filterAuthorizedInstancesIn: andResult asOrderedCollection