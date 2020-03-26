other
queryBlock

	^(self searchValueAt: 'form-condition') 
		ifNil: [[:each | true]] 
		ifNotNil: [:blockString | [blockString evaluate] on: Error do: [:ex | [:each | false]]]