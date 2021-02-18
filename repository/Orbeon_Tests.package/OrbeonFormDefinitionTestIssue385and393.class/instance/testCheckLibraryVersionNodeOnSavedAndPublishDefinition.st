other
testCheckLibraryVersionNodeOnSavedAndPublishDefinition
	"Issue #393"
	| realPublishedXml publishedFormReader savedFormReader |

	realPublishedXml := self getOrbeonXmlXpathFrom2017_2 templateClass perform: #publishedFormDefinition_issue385.
	form definition xmlString: realPublishedXml.
	publishedFormReader := form definition newFormReader.
	savedFormReader := form newFormReader.

	self should: [publishedFormReader libraryVersion] raise: LibraryReferenceException.
	self assert: savedFormReader libraryVersion notNil.