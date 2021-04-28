tests
testCheckLibraryVersionNodeOnSavedAndPublishDefinition
	"Issue #393"
	| publishedFormReader savedFormReader |

	publishedFormReader := form newFormBuilder.
	savedFormReader := form definition newFormBuilder.

	self should: [publishedFormReader libraryVersion] raise: LibraryReferenceException.
	self assert: savedFormReader libraryVersion notNil.