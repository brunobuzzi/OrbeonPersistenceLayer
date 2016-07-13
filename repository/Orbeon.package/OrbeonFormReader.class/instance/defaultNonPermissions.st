query xml
defaultNonPermissions

	^Dictionary new
		at: 'create' put: (OrderedCollection with: 'all');
		at: 'read' put: (OrderedCollection with: 'all');
		at: 'read' put: (OrderedCollection with: 'all');
		at: 'read' put: (OrderedCollection with: 'all');
		at: 'update' put: (OrderedCollection with: 'all');
		at: 'update' put: (OrderedCollection with: 'all');
		at: 'delete' put: (OrderedCollection with: 'all');
		at: 'export' put: (OrderedCollection with: 'all');
		at: 'sync' put: (OrderedCollection with: 'all');
		yourself