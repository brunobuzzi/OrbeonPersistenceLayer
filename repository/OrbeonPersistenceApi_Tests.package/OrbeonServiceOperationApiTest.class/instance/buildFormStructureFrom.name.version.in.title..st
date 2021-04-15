other
buildFormStructureFrom: xmlString name: formName version: version in: appName title: title

	^self buildFormStructureFrom: xmlString 
				name: formName 
				version: version 
				id: UUID new asString 
				in: appName 
				title: title