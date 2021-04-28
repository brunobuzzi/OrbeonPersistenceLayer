tests
testCheckXblNodeOnSavedAndPublishDefinition
	"Issue #385"
	| publishedFormReader savedFormReader |

	publishedFormReader := form newFormBuilder.
	savedFormReader := form definition newFormBuilder.

	self assert: publishedFormReader xblNode notNil.
	self assert: savedFormReader xblNode isNil.