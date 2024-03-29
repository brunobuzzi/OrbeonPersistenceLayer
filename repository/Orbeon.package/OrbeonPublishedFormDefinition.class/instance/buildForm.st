form building
buildForm
	"This is a time consuming operation. Uses a XML Parser to get data from <xmlString> variable"
	| builder |

	builder := self newFormBuilder.
	labels := builder formFieldsLabels. 						"answer: aDictionary (key: field name value: label)"
	permissions := builder getPermissions. 						"answer: anOrbeonPermissions"
	fieldsType := builder getFieldTypes.						"answer: aDictionary (key: field name value: field type)"
	self isSingleton: builder isSingleton.
	self isAvailable: builder isAvailable.
	"definition isAvailable: self isAvailable."

	customAttachment := builder getCustomAttachmentId. "set the id of the custom pdf of the receiver"

	builder createSectionsDefinitionsOn: self. 
	"self createSectionsDefinitionWith: builder."

	attachments := (builder getAttachmentIdsFrom: self).
	
	^self