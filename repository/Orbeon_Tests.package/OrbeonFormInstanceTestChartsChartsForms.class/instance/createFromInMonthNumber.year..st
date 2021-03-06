private
createFromInMonthNumber: monthIndex year: year
	| date |

	date := self randomGenerator peekRandomDateFromYear: year toYear: year fromMonth: monthIndex toMonth: monthIndex.
	
	form := (OrbeonFormInstance newFor: self getOrCreateFormDefinition withId: UUID new asString)
					createdTime: (TimeStamp date: date time: Time now);
					modifiedTime: (TimeStamp date: date time: Time now);
					xmlString: (self getRandomXmlStringTemplateMonth: monthIndex year: year);
					yourself.

	self keepTempObjectsInSystem
	ifTrue: [form buildForm] "process and store the form elements"
	ifFalse: [form buildFormSections] "only process form elements"