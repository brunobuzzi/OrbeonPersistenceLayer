render
renderChildrenOn: html

	"html div id: 'content'; with: [
		tabs do: [:each |
			html heading: each key.
			html paragraph; render: each value.
			]
	]"
	html div id: 'content'; with: [
			"html heading level3; with: selectedTab first."
			html paragraph; render: selectedTab second.
			]