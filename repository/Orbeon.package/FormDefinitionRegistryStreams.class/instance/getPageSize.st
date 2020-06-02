page intervals
getPageSize
	"The receiver extract the page size from the xml document <xmlQuery>.
	The page size set how many forms are displayed in a single page.
	This number is used for paging Orbeon Forms in Summaries"
	| pageSizeNodes pageSizeNode |

	pageSizeNodes := xmlQuery allElementsNamed: 'page-size'.
	pageSizeNodes isEmpty ifTrue: [^pageSize := 10].

	pageSizeNode := pageSizeNodes last.
	pageSizeNode strings isEmpty ifTrue: [^pageSize := 10].

	^pageSize := Number fromString: pageSizeNode strings last