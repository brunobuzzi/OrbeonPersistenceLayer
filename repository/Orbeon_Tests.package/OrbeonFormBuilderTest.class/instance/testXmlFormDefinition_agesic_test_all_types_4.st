tests
testXmlFormDefinition_agesic_test_all_types_4
	| fieldsNodes document image annotation fieldTypes labels section1 section11 section2 section21 allFields grids grid fields searchFields summaryFields permissions |

	builder := OrbeonFormBuilder for: self newDefinitionTemplate formDefinition_agesic_test_all_types_4.

"ApplicationName"
	self assert: (builder getApplicationName = 'agesic').

"Attachments"
	fieldsNodes := builder getAllFormFieldsIn: builder xmlDocument.
	document := fieldsNodes detect: [:e | (e attributeAt: 'id') = 'fileAttachment-control'].
	image := fieldsNodes detect: [:e | (e attributeAt: 'id') = 'imageAttachment-control'].
	annotation := fieldsNodes detect: [:e | (e attributeAt: 'id') = 'imageAnnotation-control'].

	self assert: (builder isAttachmentField: document).
	self assert: (builder isAttachmentField: image).

	fieldsNodes remove: document.
	fieldsNodes remove: image.
	fieldsNodes remove: annotation.

	self assert: (fieldsNodes allSatisfy: [:e | (builder isAttachmentField: e) not]).

"Availability"
	self assert: builder isAvailable.
	[builder setAvailableNodeValueWith: '1212'] on: OrbeonInvalidXMLException do: [:ex | self assert: true].
	builder setAvailableNodeValueWith: 'true'.
	self assert: builder isAvailable.
	builder setAvailableNodeValueWith: 'false'.
	self deny: builder isAvailable.

"CustomPDFAttachment"
	self assert: builder getCustomAttachmentId equals: '35a384f9dcd3982e91b0b8e9d63986ddc618a630.bin'.

"Description"
	self assert: (builder getDescription = '').

"FieldTypes"
	fieldTypes := builder getFieldTypes. "includes all fields inside a repeatable grid or not"
	self assert: ((fieldTypes at: 'name' ifAbsent: ['']) = 'xf:string').
	self assert: ((fieldTypes at: 'surname' ifAbsent: ['']) = 'xf:string').
	self assert: ((fieldTypes at: 'phone' ifAbsent: ['']) = 'xf:string').
	self assert: ((fieldTypes at: 'mobile' ifAbsent: ['']) = 'xf:string').
	self assert: ((fieldTypes at: 'moneySubject' ifAbsent: ['']) = 'xf:string').
	self assert: ((fieldTypes at: 'quantity' ifAbsent: ['']) = 'xf:decimal').
	self assert: ((fieldTypes at: 'currency' ifAbsent: ['']) = 'xf:decimal').
	self assert: ((fieldTypes at: 'date1' ifAbsent: ['']) = 'xf:date').
	self assert: ((fieldTypes at: 'date2' ifAbsent: ['']) = 'xf:date').
	self assert: ((fieldTypes at: 'date3' ifAbsent: ['']) = 'xf:date').
	self assert: ((fieldTypes at: 'dateTime' ifAbsent: ['']) = 'xf:dateTime').
	self assert: ((fieldTypes at: 'details' ifAbsent: ['']) = 'xf:string').
	self assert: ((fieldTypes at: 'type' ifAbsent: ['']) = 'xf:string').
	self assert: ((fieldTypes at: 'options' ifAbsent: ['']) = 'xf:string').
	self assert: ((fieldTypes at: 'otherOptions' ifAbsent: ['']) = 'xf:string').
	self assert: ((fieldTypes at: 'formatedText' ifAbsent: ['']) = 'xf:string').
	self assert: ((fieldTypes at: 'fileAttachment' ifAbsent: ['']) = 'xf:anyURI').
	self assert: ((fieldTypes at: 'imageAttachment' ifAbsent: ['']) = 'xf:anyURI').
	self assert: ((fieldTypes at: 'imageAnnotation' ifAbsent: ['']) = 'xf:string').
	self assert: ((fieldTypes at: 'autocomplete' ifAbsent: ['']) = 'xf:string').


"FieldsLabels"
	section1 := builder formMainSections first.
	labels := builder formFieldsLabels. 
	self assert: ((labels at: 'name' ifAbsent: ['']) = 'Name').
	self assert: ((labels at: 'surname' ifAbsent: ['']) = 'Surname').
	self assert: ((labels at: 'phone' ifAbsent: ['']) = 'Phone').
	self assert: ((labels at: 'mail' ifAbsent: ['']) = 'Mail').
	self assert: ((labels at: 'control-8' ifAbsent: ['']) = 'Here we enter the mobile phones').
	self assert: ((labels at: 'moneySubject' ifAbsent: ['']) = 'Subject').
	self assert: ((labels at: 'quantity' ifAbsent: ['']) = 'Quantity').
	self assert: ((labels at: 'currency' ifAbsent: ['']) = 'Currency').
	self assert: ((labels at: 'currency' ifAbsent: ['']) = 'Currency').
	self assert: ((labels at: 'date1' ifAbsent: ['']) = 'Date 1').
	self assert: ((labels at: 'dateTime' ifAbsent: ['']) = 'Date and Time').
	self assert: ((labels at: 'date2' ifAbsent: ['']) = 'Date 2').
	self assert: ((labels at: 'date3' ifAbsent: ['']) = 'Date 3').
	self assert: ((labels at: 'details' ifAbsent: ['']) = 'Details').
	self assert: ((labels at: 'type' ifAbsent: ['']) = 'Type').
	self assert: ((labels at: 'options' ifAbsent: ['']) = 'Options').
	self assert: ((labels at: 'otherOptions' ifAbsent: ['']) = 'Other Options').
	self assert: ((labels at: 'formatedText' ifAbsent: ['']) = 'Formatted Text').
	self assert: ((labels at: 'fileAttachment' ifAbsent: ['']) = 'Attach Document').
	self assert: ((labels at: 'imageAttachment' ifAbsent: ['']) = 'Image Attachment').
	self assert: ((labels at: 'imageAnnotation' ifAbsent: ['']) = 'Annotation').
	self assert: ((labels at: 'autocomplete' ifAbsent: ['']) = 'Autocomplete').

"FormMainSectionsNames"
	self assert: ((builder formMainSections first attributeAt: 'id') = 'section-1-control').
	self assert: ((builder formMainSections second attributeAt: 'id') = 'section-14-control').

"FormMainSectionsSize"
	self assert: (builder formMainSections size = 2).

"FormName"
	self assert: (builder getFormName =  'test-all-types-4').

"FormSubSectionsStructure"
	section1 := builder formMainSections first.
	section11 := (builder formSubSectionsOf: section1) last.
	section2 := builder formMainSections second.
	section21 := (builder formSubSectionsOf: section2) last.
	self assert:  (builder formSubSectionsOf: section1) size = 1.
	self assert:  (builder formSubSectionsOf: section2) size = 1.
	self assert: ((section11 attributeAt: 'id') = 'section-7-control').
	self assert: ((section21 attributeAt: 'id') = 'section-24-control').
	self assert: ((builder formFieldsIn: section1) size = 4).
	self assert: ((builder formFieldsIn: section11) size = 2). "Fields inside Repeatable GRIDS [fr:grid] are ingnored"
	self assert: ((builder formFieldsIn: section2) size = 6). "Fields inside Repeatable GRIDS [fr:grid] are ingnored"
	self assert: ((builder formFieldsIn: section21) size = 5).

"FormTitle"
	self assert: (builder getTitle = 'Test').

"GetAllFormFieldsInSection1"
	section1 := builder formMainSections first.
	allFields := builder getAllFormFieldsIn: section1. "includes all fields inside a repeatable grid or not"
	self assert: (allFields size = 9).

"GetAllFormFieldsInSection2"
	section2 := builder formMainSections second.
	allFields := builder getAllFormFieldsIn: section2. "includes all fields inside a repeatable grid or not"
	self assert: (allFields size = 13).

"GetFieldsOfGridsInSection1"
	section1 := builder formMainSections first.
	section11 := (builder formSubSectionsOf: section1) last.
	grids := builder formGridComponentsIn: section11.
	grid := grids first.
	fields := builder formGridFieldsIn: grid.
	self assert: (fields size = 3).
	self assert: (fields anySatisfy: [:e | (e attributeAt: 'id') = 'moneySubject-control']).
	self assert: (fields anySatisfy: [:e | (e attributeAt: 'id') = 'quantity-control']).
	self assert: (fields anySatisfy: [:e | (e attributeAt: 'id') = 'currency-control']).

"GetFieldsOfGridsInSection2"
	section2 := builder formMainSections second.
	grids := builder formGridComponentsIn: section2.
	grid := grids first.
	fields := builder formGridFieldsIn: grid.
	self assert: (fields size = 2).
	self assert: (fields anySatisfy: [:e | (e attributeAt: 'id') = 'options-control']).
	self assert: (fields anySatisfy: [:e | (e attributeAt: 'id') = 'otherOptions-control']).

"GetGridsFromSection1"
	section1 := builder formMainSections first.
	section11 := (builder formSubSectionsOf: section1) last.
	grids := builder formGridComponentsIn: section1.
	self assert: (grids size = 0).
	grids := builder formGridComponentsIn: section11.
	self assert: (grids size = 1).
	self assert: ((grids first attributeAt: 'id') = 'grid-10-grid').

"GetGridsFromSection2"
	section2 := builder formMainSections second.
	section21 := (builder formSubSectionsOf: section2) last.
	grids := builder formGridComponentsIn: section21.
	self assert: (grids size = 0).
	grids := builder formGridComponentsIn: section2.
	self assert: (grids size = 1).
	self assert: ((grids first attributeAt: 'id') = 'grid-19-grid').

"GetSearchFields"
	section1 := builder formMainSections first.
	searchFields := builder searchFormFieldsIn: section1.
	self assert: (searchFields size = 3).
	self assert: (searchFields anySatisfy: [:e | (e attributeAt: 'id') = 'name-control']).
	self assert: (searchFields anySatisfy: [:e | (e attributeAt: 'id') = 'surname-control']).
	self assert: (searchFields anySatisfy: [:e | (e attributeAt: 'id') = 'phone-control']).

"GetSummaryFields"
	section1 := builder formMainSections first.
	summaryFields := builder summaryFormFieldsIn: section1.
	self assert: (summaryFields size = 3).
	self assert: (summaryFields anySatisfy: [:e | (e attributeAt: 'id') = 'name-control']).
	self assert: (summaryFields anySatisfy: [:e | (e attributeAt: 'id') = 'surname-control']).
	self assert: (summaryFields anySatisfy: [:e | (e attributeAt: 'id') = 'phone-control']).

"Permissions"
	permissions := builder getPermissions.
	self assert: (permissions class == OrbeonPermissions).
	self assert: (permissions hasCreateAccess: 'owner').
	self assert: (permissions hasReadAccess: 'owner').
	self assert: (permissions hasUpdateAccess: 'owner').
	self assert: (permissions hasDeleteAccess: 'owner').
	self assert: (permissions hasCreateAccess: 'group-member').
	self assert: (permissions hasReadAccess: 'group-member').
	self assert: (permissions hasUpdateAccess: 'group-member').
	self assert: (permissions hasCreateAccess: 'orbeon-role').
	self assert: (permissions hasReadAccess: 'orbeon-role').
	self assert: (permissions hasDeleteAccess: 'orbeon-role').
	self assert: (permissions hasCreateAccess: 'x-role').
	self assert: (permissions hasReadAccess: 'x-role') not.
	self assert: (permissions hasUpdateAccess: 'x-role') not.
	self assert: (permissions hasDeleteAccess: 'x-role') not.