test
form_test_random_2
	| generator xmlWriter |

	generator := self getBasicValuesGenerator.
	xmlWriter := XMLWriter new.
	xmlWriter tag: 'form' with: [
		xmlWriter tag: 'section-1' with: [
			xmlWriter tag: 'section-1-iteration' with: [
				xmlWriter tag: 'name' with: generator peekRandomMaleName.
				xmlWriter tag: 'surname' with: generator peekRandomSurname.
				xmlWriter tag: 'phone' with: (generator peekRandomStringNumberOfSize: 6).
				xmlWriter tag: 'mail' with: (generator peekRandomEmailOfSize: 4).
				xmlWriter tag: 'boolean' with: generator peekRandomBoolean printString.
				xmlWriter tag: 'section-7' with: [
					xmlWriter tag: 'control-8' with: nil.
					xmlWriter tag: 'mobile' with: (generator peekRandomStringNumberOfSize: 6).
					1 to: 3 do: [:index |
						xmlWriter tag: 'grid-10' with: [
							xmlWriter tag: 'moneySubject' with: (generator peekRandomStringNumberOfSize: 4).
							xmlWriter tag: 'quantity' with: (generator peekRandomStringNumberOfSize: 4).
							xmlWriter tag: 'currency' with: (generator peekRandomStringNumberOfSize: 4).
						].
					].
				].
			].
		].
		xmlWriter tag: 'section-14' with: [
			xmlWriter tag: 'date1' with: (generator peekRandomDate printMySqlString).
			xmlWriter tag: 'dateTime' with: (generator peekRandomTimeStamp asOrbeonDateTimeString).
			xmlWriter tag: 'date2' with: (generator peekRandomDate printMySqlString).
			xmlWriter tag: 'date3' with: (generator peekRandomDate printMySqlString).
			xmlWriter tag: 'time' with: (generator peekRandomTime printMySqlString).
			xmlWriter tag: 'details' with: (generator peekRandomStringNumberOfSize: 10).
			xmlWriter tag: 'type' with: '1'.
			xmlWriter tag: 'grid-19' with: [
				xmlWriter tag: 'options' with: '2 1'.
				xmlWriter tag: 'otherOptions' with: '2'.
			].
			xmlWriter tag: 'section-24' with: [
				xmlWriter tag: 'formatedText' with: '&lt;ol&gt;&lt;li&gt;this is a &lt;strong style="line-height: 1.5em;"&gt;formatted&lt;/strong&gt; &lt;em style="line-height: 1.5em;"&gt;text&lt;/em&gt;&lt;/li&gt;&lt;li&gt;&lt;em style="line-height: 1.5em;"&gt;hello&lt;/em&gt;&lt;/li&gt;&lt;/ol&gt;&lt;div&gt;
&lt;ul&gt;&lt;li&gt;&lt;strong&gt;&lt;em&gt;test&lt;/em&gt;&lt;/strong&gt;&lt;/li&gt;&lt;li&gt;&lt;strong&gt;&lt;em&gt;sadf&lt;/em&gt;&lt;/strong&gt;&lt;/li&gt;&lt;/ul&gt;
&lt;strong&gt;&lt;em&gt;&lt;br&gt;&lt;/em&gt;&lt;/strong&gt;&lt;/div&gt;'.
				xmlWriter tag: 'fileAttachment' with: nil.
				xmlWriter tag: 'imageAnnotation' with: nil.
				xmlWriter tag: 'imageAnnotation' with: [
					xmlWriter tag: 'image' with: nil.
					xmlWriter tag: 'annotation' with: nil.
				].
				xmlWriter tag: 'autocomplete' with: nil.
			].
		].
	].
	^xmlWriter contents