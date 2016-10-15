distribution by fields
getFieldTypesQuantity
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
		at: 'String' put: qString;
		at: 'Number' put: qNumber;
		at: 'Date' put: qDate;
		at: 'Time' put: qTime;
		at: 'TimeStamp' put: qTimeStamp;
		at: 'Boolean' put: qBoolean;
		yourself