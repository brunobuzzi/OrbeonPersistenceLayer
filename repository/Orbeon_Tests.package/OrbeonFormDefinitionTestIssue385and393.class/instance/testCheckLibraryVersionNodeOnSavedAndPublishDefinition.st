tests
testCheckLibraryVersionNodeOnSavedAndPublishDefinition
	"Issue #393"
	| realPublishedXml publishedFormReader savedFormReader |

	realPublishedXml := self newDefinitionTemplate formDefinition_gs_issue_385_published.

	form definition xmlString: realPublishedXml.
	publishedFormReader := form definition newFormBuilder.
	savedFormReader := form newFormBuilder.

	self should: [publishedFormReader libraryVersion] raise: LibraryReferenceException.
	self assert: savedFormReader libraryVersion notNil.