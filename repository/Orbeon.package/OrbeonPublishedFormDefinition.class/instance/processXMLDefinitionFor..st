process xml
processXMLDefinitionFor: anOrbeonXmlPath
	"This is a time consuming operation. Uses a XML Parser to get data from <xmlString> variable"
	| reader |

	reader := self newFormReaderFor: anOrbeonXmlPath.
	labels := reader formFieldsLabels. 						"answer: aDictionary (key: field name value: label)"
	permissions := reader getPermissions. 						"answer: aDictionary (key: permission name value: collection of rols)"
	fieldsType := reader getFieldTypes.						"answer: aDictionary (key: field name value: field type)"
	self isSingleton: reader isSingleton.

	customAttachment := reader getCustomAttachmentId. "set the id of the custom pdf of the receiver"
	self createSectionsDefinitionWith: reader.

	self attachments: (reader getAttachmentIdsFrom: self).
	^self