other
initialize

	super initialize.

	isPublished := false.
	instances := RcKeyValueDictionary new. "hold instances by <id>, more easy to perform the synchronization"
	drafts := RcKeyValueDictionary new. 
	fieldInstances := RcKeyValueDictionary new. "a rc dictionary (by field name) of RcIdentityBag"
	synchronizations := OrderedCollection new.
	fieldsType := Dictionary new.
	permissions := Dictionary new.
	sectionDefinitions := Dictionary new.
	attachments := Dictionary new.