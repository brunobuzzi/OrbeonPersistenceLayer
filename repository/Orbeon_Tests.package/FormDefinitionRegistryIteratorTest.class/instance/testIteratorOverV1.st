test
testIteratorOverV1
	| formDefinition |

	self application unregisterDefinitionNamed: 'iterator'.  "remove any previous form definitions and instances"

	formDefinition := OrbeonSavedFormDefinition createDefinition: 'iterator' version: 1 with: #formDefinition_iteratorV1 in: self application. "create the <OrbeonPublishedFormDefinition>"

	"create X number of <OrbeonFormInstance> if <OrbeonPublishedFormDefinition> named <iterator> with source <formDefinition_iteratorV1>"
	#('john' 'mike' 'donald' 'eric' 'alex' 'dale' 'james' 'mark' 'jason' 'todd' 'robert' 'scott' 'aaron' 'sean' 'peter' 'sam')  "array of 16" do: [:each |
		OrbeonSavedFormDefinition createFormInstance: #form_iterator_v1_name: withValues: (Array with: each) definitionNamed: 'iterator' app: 'ue' definitionMethod: #formDefinition_iteratorV1.
	].

	iterator := FDRegistryIteratorWithoutPermissons on: (self application registryForFormNamed: 'iterator' ifNone: [self assert: false]) forVersion: 1.
	iterator fromIndex: 1; toIndex: 10.
	self assert: (iterator getCollection size = 10).

	iterator := FDRegistryIteratorWithoutPermissons on: (self application registryForFormNamed: 'iterator' ifNone: [self assert: false]) forVersion: 1.
	iterator fromIndex: 1; toIndex: 5.
	self assert: (iterator getCollection size = 5).

	iterator := FDRegistryIteratorWithoutPermissons on: (self application registryForFormNamed: 'iterator' ifNone: [self assert: false]) forVersion: 1.
	iterator fromIndex: 1; toIndex: 7.
	self assert: (iterator getCollection size = 7).

	iterator := FDRegistryIteratorWithoutPermissons on: (self application registryForFormNamed: 'iterator' ifNone: [self assert: false]) forVersion: 1.
	iterator fromIndex: 1; toIndex: 15.
	self assert: (iterator getCollection size = 15).

	self assert: (iterator nextObject notNil). "we reach the last object a position: 16"
	self assert: (iterator nextObject isNil).

	iterator := FDRegistryIteratorWithoutPermissons on: (self application registryForFormNamed: 'iterator' ifNone: [self assert: false]) forVersion: 1.
	iterator fromIndex: 1; toIndex: 16.
	self assert: (iterator getCollection size = 16).