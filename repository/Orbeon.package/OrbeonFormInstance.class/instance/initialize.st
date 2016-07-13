other
initialize

	super initialize.

	draft  := 'N'.
	username := ''.
	groupname := ''.
	fields := Dictionary new.
	fieldsValues := Dictionary new.
	repeatFieldsValues := IdentitySet new. 
"<repeatFieldsValues> is an IdentitySet of where each key is the name of the repeat component and the value is anOrderedCollection of Dictionaries. Where each Dictonary holds the data of each individual repeat "
	sections := OrderedCollection new.
	isValid := false.