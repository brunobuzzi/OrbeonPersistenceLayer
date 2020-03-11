orbeon sections
summaryFormFieldsNameIn: xmlSection
	"The receiver get the name od the fields of Orbeon Form Definition <xmlDefinition>, components inside -repeat element- are NOT listed "

	^(self summaryFormFieldsIn: xmlSection) collect: [:each | self getNameFrom: each]