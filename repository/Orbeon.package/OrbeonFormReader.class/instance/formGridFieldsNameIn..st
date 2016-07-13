orbeon sections
formGridFieldsNameIn: xmlGrid
	"The receiver get the name od the fields of Orbeon Form Definition <xmlDefinition>, components inside -repeat element- are NOT listed "

	^(self formGridFieldsIn: xmlGrid) collect: [:each | self getNameFrom: each]