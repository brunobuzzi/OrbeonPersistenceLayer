other
initialize

	super initialize.

	instances := RcKeyValueDictionary new. "hold instances by <id>, more easy to perform the synchronization"
	drafts := RcKeyValueDictionary new. 
	fieldInstances := RcKeyValueDictionary new. "a rc dictionary (by field name) of RcIdentityBag"
	fieldsType := Dictionary new.
	permissions := Dictionary new.
	sectionDefinitions := OrderPreservingDictionary new.
	attachments := Dictionary new.

	self isAvailable: false.
	self isSingleton: false.