other
testJanuary2020
	| forms |

	forms := OrderedCollection new.
	1 to: 30 do: [:idx | forms add: (self createFromInMonthNumber: 1 year: 2020)].