query xml
getFieldTypes
	"Answer aDictionary with all fields types. The <key> is the name of the field and the <value> is name of the type"
	| fieldTypes |

	fieldTypes := Dictionary new.

	(xmlDocument xPath: self defaultOrbeonXpathVersion xfBindXpath) do: [:eachBindNode |  
		fieldTypes at: (eachBindNode attributeAt: 'name') put: (self getTypeFrom: eachBindNode)].

	^fieldTypes