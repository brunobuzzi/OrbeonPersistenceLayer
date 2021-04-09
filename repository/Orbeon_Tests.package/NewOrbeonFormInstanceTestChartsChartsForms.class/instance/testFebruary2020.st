tests
testFebruary2020
	| forms |

	forms := OrderedCollection new.
	1 to: 30 do: [:idx | forms add: (self createFromInMonthNumber: 2 year: 2020)].