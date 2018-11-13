publish
createPublishedFormDefinition
	| publishedForm |

	publishedForm := OrbeonPublishedFormDefinition new
									id: id;
									application: application;
									formName: formName;
									title: self title;
									description: self description;
									xmlString: xmlString;
									yourself.

	publishedForm setAvailableNodeWith: 'false'.
	self setAvailableNodeWith: 'false'.

	^publishedForm