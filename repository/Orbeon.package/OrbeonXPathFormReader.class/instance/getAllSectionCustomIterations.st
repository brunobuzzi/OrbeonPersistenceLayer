custom iteration name
getAllSectionCustomIterations
	"Get all repeteable sections with a -custom iteration name- 
	Right now only -custom iteration name- for Section are supported. 
	Custom names for Grids are not supported because Orbeon 4.9 does no reflect the grid custom iteration name in XML (orbeon bug ?)"

	(xmlDocument xPath: '//xf:bind[@id=''fr-form-binds'']/xf:bind') do: [:eachXfBind | | iterationBind iterationName sectionName |
		iterationBind := (eachXfBind xPath: 'xf:bind') 
			ifNotEmpty: [:collection | (collection size = 1) 
				ifTrue: [collection last] 
				ifFalse: [nil]]	
			ifEmpty: [nil].
		iterationBind ifNotNil: [
			sectionName := eachXfBind attributeAt: 'name'.
			iterationName := iterationBind attributeAt: 'name'.

			((sectionName, '-iteration') = iterationName) ifFalse: [customSectionIterationNames at: sectionName put: iterationName].
		].
	].

	^customSectionIterationNames