service-get
reindexOrbeonForms
	"This service is called when a user click on ReIndex Database"
	| apiOperation |
	<get>
	<path: '/reindex'>

	apiOperation := OrbeonReIndexDatabaseApi newFor: self .
self halt.
	^apiOperation doIt