publish
createPublishedFormDefinition
	"The receiver create the published form <OrbeonPublishedFormDefinition>.
	In Orbeon the <available> node is not present but in GemStone we force it (see issue: #194)"
	| publishedForm |

	publishedForm := self defaultPublishedFormDefinitionClass new
									id: id;
									version: version;
									application: application;
									formName: formName;
									title: self title;
									description: self description;
									xmlString: xmlString;
									yourself.

	publishedForm setAvailableNodeWith: 'false'. "force the creation of <available> node"
	self setAvailableNodeWith: 'false'. "force the creation of <available> node"

	^publishedForm