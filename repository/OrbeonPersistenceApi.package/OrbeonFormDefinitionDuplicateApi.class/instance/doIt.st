other
doIt
	| savedDefinition application currentDefinition |

	savedDefinition := OrbeonSavedFormDefinition new.

	savedDefinition xmlString: xmlString;
		id: id;
		setMetadata; "set: application, formName, title, description"
		version: 1; "when a form is duplicate it always start at version 1"
		updateLastModifiedTime.

	application := savedDefinition application.
	currentDefinition := application getLatestSavedDefinition: savedDefinition formName.

	savedDefinition setXmlString: savedDefinition xmlString. "create the associated <OrbeonPublishedFormDefinition>"

	application addSavedDefinition: savedDefinition