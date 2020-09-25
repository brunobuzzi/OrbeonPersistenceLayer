other
setApplicationAndFormNameFromXmlString
	| reader |

	reader := self defaultXFormReaderClass for: xmlString.
	appName := reader getApplicationName.
	formName := reader getFormName.