other
renderContentOn: html

	summaryArena ifNil: [summaryArena := WAOrbeonApplicationSummary parent: self].

	html div id: 'content'; 
				with: [html render: summaryArena].