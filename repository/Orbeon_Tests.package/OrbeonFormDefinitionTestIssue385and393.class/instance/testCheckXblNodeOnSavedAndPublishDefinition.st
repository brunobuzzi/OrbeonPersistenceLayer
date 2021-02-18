other
testCheckXblNodeOnSavedAndPublishDefinition
	"Issue #385"
	| realPublishedXml publishedFormReader savedFormReader |

	realPublishedXml := self getOrbeonXmlXpathFrom2017_2 templateClass perform: #publishedFormDefinition_issue385.
	form definition xmlString: realPublishedXml.
	publishedFormReader := form definition newFormReader.
	savedFormReader := form newFormReader.

	self assert: publishedFormReader xblNode notNil.
	self assert: savedFormReader xblNode isNil.