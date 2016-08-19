random generator
peekRandomDate
	| random day month year |

	random := Random new.
	day := random integerBetween: 1 and: 28.
	month := random integerBetween: 1 and: 12.
	year := random integerBetween: 1950 and: 2020.

	^Date newDay: day monthNumber: month year: year