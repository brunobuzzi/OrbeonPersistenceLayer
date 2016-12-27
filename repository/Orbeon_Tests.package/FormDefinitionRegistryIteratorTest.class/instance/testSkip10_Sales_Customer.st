other
testSkip10_Sales_Customer
	| forms |

	forms := OrderedCollection new.
	iterator position: 10.

	1 to: 10 do: [:counter | 
		forms add: iterator nextObject.
	].

	self assert: true.