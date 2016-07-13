other
initialize

	super initialize.

	createdTime := TimeStamp now.
	deleted := 'N'.
	modifiedTime := TimeStamp now.
	modifiedUser := ''.
	properties := Dictionary new.
	version := 1.