test
testIteratorOverV1andV2andV3
	| formDefinition |

	self application unregisterDefinitionNamed: 'iterator'.  "remove any previous form definitions and instances"

	formDefinition := OrbeonSavedFormDefinition createDefinition: 'iterator' version: 1 with: #formDefinition_iteratorV1withPermissions in: self application. "create the <OrbeonPublishedFormDefinition>"

	"create 16 instances of <OrbeonFormInstance> if <OrbeonPublishedFormDefinition> named <iterator> with source <formDefinition_iteratorV1withPermissions>"
	#('john' 'mike' 'donald' 'eric' 'alex' 'dale' 'james' 'mark' 'jason' 'todd' 'robert' 'scott' 'aaron' 'sean' 'peter' 'sam')  "array of 16" do: [:each | | formInstance |
			formInstance := OrbeonSavedFormDefinition createFormInstance: #form_iterator_v1_name: withValues: (Array with: each) definitionNamed: 'iterator' app: 'ue' definitionMethod: #formDefinition_iteratorV1withPermissions.
			formInstance 
				username: 'andrew';
				groupname: 'admin'.
	].

	"page size = 10 and 16 forms"
	iterator := self newIteratorWithPermissionsForVersion: 1.
	iterator user: 'andrew'; group: 'admin'.
	iterator fromIndex: 1; toIndex: 10.
	self assert: (iterator getCollection size = 10).
	"page size = 5 and 16 forms"
	iterator := self newIteratorWithPermissionsForVersion: 1.
	iterator user: 'andrew'; group: 'admin'.
	iterator fromIndex: 1; toIndex: 5.
	self assert: (iterator getCollection size = 5).
	iterator := self newIteratorWithPermissionsForVersion: 1.
	iterator user: 'andrew'; group: 'admin'.
	iterator fromIndex: 6; toIndex: 10.
	self assert: (iterator getCollection size = 5).
	iterator := self newIteratorWithPermissionsForVersion: 1.
	iterator user: 'andrew'; group: 'admin'.
	iterator fromIndex: 11; toIndex: 15.
	self assert: (iterator getCollection size = 5).
	iterator := self newIteratorWithPermissionsForVersion: 1.
	iterator user: 'andrew'; group: 'admin'.
	iterator fromIndex: 16; toIndex: 16.
	self assert: (iterator getCollection size = 1).
	self assert: (iterator nextObject isNil).

	"page size = 7 and 16 forms"
	iterator := self newIteratorWithPermissionsForVersion: 1.
	iterator user: 'walter'; group: 'sales'.
	iterator fromIndex: 1; toIndex: 7.
	self assert: (iterator nextObject isNil).

	self assert: (iterator getCollection size = 0).
	iterator := self newIteratorWithPermissionsForVersion: 1.
	iterator fromIndex: 8; toIndex: 14.
	iterator user: 'walter'; group: 'sales'.
	self assert: (iterator getCollection size = 0).
	iterator := self newIteratorWithPermissionsForVersion: 1.
	iterator user: 'walter'; group: 'sales'.
	iterator fromIndex: 15; toIndex: 16.
	self assert: (iterator getCollection size = 0).
	self assert: (iterator nextObject isNil).

	"page size = 15 and 16 forms"
	iterator := self newIteratorWithPermissionsForVersion: 1.
	iterator user: 'andrew'; group: 'admin'.
	iterator fromIndex: 1; toIndex: 15.
	self assert: (iterator getCollection size = 15).
	iterator := self newIteratorWithPermissionsForVersion: 1.
	iterator user: 'andrew'; group: 'admin'.
	iterator fromIndex: 16; toIndex: 16.
	iterator user: 'andrew'; group: 'admin'.
	self assert: (iterator getCollection size = 1).
	self assert: (iterator nextObject isNil).

	"page size = 16 and 16 forms"
	iterator := self newIteratorWithPermissionsForVersion: 1.
	iterator user: 'walter'; group: 'sales'.
	iterator fromIndex: 1; toIndex: 16.
	self assert: (iterator getCollection size = 0).
	self assert: (iterator nextObject isNil).

	"page size = 16 and 16 forms - with roles"
	iterator := self newIteratorWithPermissionsForVersion: 1.
	iterator user: 'walter'; group: 'sales'; roles: (OrderedCollection with: 'admin').
	iterator fromIndex: 1; toIndex: 16.
	self assert: (iterator getCollection size = 16).
	self assert: (iterator nextObject isNil).

	formDefinition := OrbeonSavedFormDefinition createDefinition: 'iterator' version: 2 with: #formDefinition_iteratorV2withPermissions in: self application. "create the <OrbeonPublishedFormDefinition>"
	"create 16 instances of <OrbeonFormInstance> if <OrbeonPublishedFormDefinition> named <iterator> with source <formDefinition_iteratorV1>"
	#('john' 'mike' 'donald' 'eric' 'alex' 'dale' 'james' 'mark' 'jason' 'todd' 'robert' 'scott' 'aaron' 'sean' 'peter' 'sam')  "array of 16" do: [:each |
		OrbeonSavedFormDefinition createFormInstance: #form_iterator_v2_name:surname: withValues: (Array with: each with: each) definitionNamed: 'iterator' app: 'ue' definitionMethod: #formDefinition_iteratorV2withPermissions.
	].
	self assert: (iterator definitionRegistry getAllVersion size = 2).

	"page size = 16 and 16 forms"
	iterator := self newIteratorWithPermissionsForVersion: 2.
	iterator user: 'walter'; group: 'sales'.
	iterator fromIndex: 1; toIndex: 16.
	self assert: (iterator getCollection size = 0).
	self assert: (iterator nextObject isNil).

	"page size = 16 and 16 forms - with roles"
	iterator := self newIteratorWithPermissionsForVersion: 2.
	iterator user: 'walter'; group: 'sales'; roles: (OrderedCollection with: 'admin').
	iterator fromIndex: 1; toIndex: 16.
	self assert: (iterator getCollection size = 16).
	self assert: (iterator nextObject isNil).

	formDefinition := OrbeonSavedFormDefinition createDefinition: 'iterator' version: 3 with: #formDefinition_iteratorV3withPermissions in: self application. "create the <OrbeonPublishedFormDefinition>"
	"create 16 instances of <OrbeonFormInstance> if <OrbeonPublishedFormDefinition> named <iterator> with source <formDefinition_iteratorV1>"
	#('john' 'mike' 'donald' 'eric' 'alex' 'dale' 'james' 'mark' 'jason' 'todd' 'robert' 'scott' 'aaron' 'sean' 'peter' 'sam')  "array of 16" keysAndValuesDo: [:key :each |
		OrbeonSavedFormDefinition createFormInstance: #form_iterator_v3_name:surname:number: withValues: (Array with: each with: each with: key printString) definitionNamed: 'iterator' app: 'ue' definitionMethod: #formDefinition_iteratorV3withPermissions.
	].
	self assert: (iterator definitionRegistry getAllVersion size = 3).

	"page size = 16 and 16 forms"
	iterator := self newIteratorWithPermissionsForVersion: 3.
	iterator user: 'walter'; group: 'sales'.
	iterator fromIndex: 1; toIndex: 16.
	self assert: (iterator getCollection size = 0).
	self assert: (iterator nextObject isNil).

	"page size = 16 and 16 forms - with roles"
	iterator := self newIteratorWithPermissionsForVersion: 3.
	iterator user: 'walter'; group: 'sales'; roles: (OrderedCollection with: 'admin').
	iterator fromIndex: 1; toIndex: 16.
	self assert: (iterator getCollection size = 16).
	self assert: (iterator nextObject isNil).