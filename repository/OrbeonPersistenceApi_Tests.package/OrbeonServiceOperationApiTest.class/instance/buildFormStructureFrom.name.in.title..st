other
buildFormStructureFrom: xmlString name: formName in: appName title: title

	^self buildFormStructureFrom: xmlString 
				name: formName 
				version: 1 
				id: UUID new asString 
				in: appName 
				title: title