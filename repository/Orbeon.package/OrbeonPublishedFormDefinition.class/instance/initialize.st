other
initialize

	super initialize.

	instances := RcKeyValueDictionary new. "hold instances by <id>, more easy to perform the synchronization"
	drafts := RcKeyValueDictionary new. 
	fieldInstances := RcKeyValueDictionary new. "a rc dictionary (by field name) of RcIdentityBag"
	fieldsType := Dictionary new.
	permissions := OrbeonPermissions new.
	sectionDefinitions := Dictionary new.
	attachments := Dictionary new.
	deletedInstances := RcKeyValueDictionary new.
	deletedDrafts := RcKeyValueDictionary new.

	self isAvailable: false.
	self isSingleton: false.