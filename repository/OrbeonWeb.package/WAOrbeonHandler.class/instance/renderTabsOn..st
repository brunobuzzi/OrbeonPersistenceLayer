render
renderTabsOn: html

	html unorderedList id: 'tabs'; with: [
		#('Publicados' 'En Edición' 'En Desarrollo') do: [:key | | value |
			value := tabs at: key.
			html listItem: [
				html anchor
					class: (selectedTab first = key ifTrue: ['active']);
					style: (selectedTab first = key ifTrue: ['background-color: gray; border-style: ridge;'] ifFalse:['background-color: lightgray; border-style: ridge;']);
					callback: [selectedTab := (Array with: key with: value)];
					with: key
				]
			]
		].