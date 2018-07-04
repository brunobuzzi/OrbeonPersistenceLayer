service-lock
rejectLeaseFor: anOrbeonFormInstance withXml: xmlString
	| mimeDocument |

	mimeDocument := WAMimeDocument on: xmlString mimeType: WAMimeType textPlain.

	^self requestContext response
		headerAt: 'timeout' put: ('Second-', anOrbeonFormInstance secondsToExpire printString);
		document: mimeDocument;
		status: WAResponse statusLocked message: xmlString