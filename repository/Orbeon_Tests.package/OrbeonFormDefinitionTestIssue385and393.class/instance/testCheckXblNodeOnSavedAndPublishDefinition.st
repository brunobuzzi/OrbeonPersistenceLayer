tests
testCheckXblNodeOnSavedAndPublishDefinition
	"Issue #385"
	| realPublishedXml publishedFormReader savedFormReader |

	realPublishedXml := self newDefinitionTemplate formDefinition_gs_issue_385_published.

	form definition xmlString: realPublishedXml.
	publishedFormReader := form definition newFormBuilder.
	savedFormReader := form newFormBuilder.

	self assert: publishedFormReader xblNode notNil.
	self assert: savedFormReader xblNode isNil.