other
doIt
	| savedDefinition application |

	savedDefinition := OrbeonSavedFormDefinition new.

	savedDefinition xmlString: xmlString;
		id: id;
		setMetadata; "set: application, formName, title, description"
		version: 1; "when a form is duplicate it always start at version 1"
		updateLastModifiedTime.

	application := savedDefinition application.

	savedDefinition setXmlString: savedDefinition xmlString. "create the associated <OrbeonPublishedFormDefinition>"

	application addSavedDefinition: savedDefinition.

	^savedDefinition xmlString