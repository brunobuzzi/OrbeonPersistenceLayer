other
userList
	| columns |

	columns := OrderedCollection new.
	columns 
		add: (Array with: 'Username' with: #name  with:  [ :each | self inform: each name onAnswer: [ ] ]);
		add: (Array with: 'Password' with: #password  with:  nil);
		asArray;
		yourself.

	^self newReportWithProperties: columns