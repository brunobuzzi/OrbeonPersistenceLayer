orbeon sections
searchFormFieldsNameIn: xmlSection
	"The receiver get the name od the fields of Orbeon Form Definition <xmlDefinition>, components inside -repeat element- are NOT listed "

	^(self searchFormFieldsIn: xmlSection) collect: [:each | self getNameFrom: each]