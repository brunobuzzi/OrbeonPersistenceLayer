publish
basicBuildPublishedFormDefinition
	| publishedForm |

	publishedForm := self defaultPublishedFormDefinitionClass new
									id: id;
									version: version;
									application: application;
									formName: formName;
									title: self title;
									description: self description;
									createdTime: createdTime;									
									yourself.

	definition := publishedForm.
	definition definition: self.

	^publishedForm