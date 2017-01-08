other
initialize

	super initialize.

	streams := Dictionary new.
	formsInRange := Set new.

	globalSize := 0.
	fromIndex := 1.
	toIndex := 10.