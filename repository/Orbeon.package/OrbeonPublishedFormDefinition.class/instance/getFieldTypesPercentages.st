other
getFieldTypesPercentages
	"Answer aDictionary where the key is the name of the field and the value is percentage of that type of field"
	| total qNumber qBoolean qString qDate qTime qTimeStamp groupedDict |

	total := fieldsType size.
	qNumber := qBoolean := qString := qDate := qTime := qTimeStamp := 0.

	groupedDict := fieldsType groupBy: [:fType | self mapOrbeonType: fType] having: [:group | true].

	groupedDict keysAndValuesDo: [:key :collection | 
		(key stType = Number) ifTrue: [qNumber := collection size].
		(key stType = Boolean) ifTrue: [qBoolean := collection size].
		(key stType = String) ifTrue: [qString := collection size].
		(key stType = Date) ifTrue: [qDate := collection size].
		(key stType = Time) ifTrue: [qTime := collection size].
		(key stType = TimeStamp) ifTrue: [qTimeStamp := collection size]. 
	].

	^OrderPreservingDictionary new
		at: 'String' put: (qString * 100 / total);
		at: 'Number' put: (qNumber * 100 / total);
		at: 'Date' put: (qDate * 100 / total);
		at: 'Time' put: (qTime * 100 / total);
		at: 'TimeStamp' put: (qTimeStamp * 100 / total);
		at: 'Boolean' put: (qBoolean * 100 / total);
		yourself