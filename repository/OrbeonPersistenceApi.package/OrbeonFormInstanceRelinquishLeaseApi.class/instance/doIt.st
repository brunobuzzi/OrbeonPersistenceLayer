other
doIt
	| application instance |

	application := self getOrbeonApplicationClass applicationNamed: self getApplicationName ifNone: [^NoApplicationException signal: 'No application named [', self getApplicationName, '] was found'].

	instance := application getAnyInstanceWithId: id of: self getFormName.

	(instance canRelinquishLeaseBy: self getUsernameFromXmlString) 
	ifFalse: [^restHandler rejectRelinquishLeaseFor: instance withXml: (self getXmlLockUnlockRejectionFor: instance)].

	instance relinquishLeaseBy: self getUsernameFromXmlString