other
getRandomXMLFormInstance
	| generator |

	generator := self getBasicValuesGenerator.
	^'<?xml version="1.0" encoding="UTF-8"?>
<form>
    <section-1>
        <section-1-iteration>
            <name>', generator peekRandomMaleName,'</name>
            <surname>', generator peekRandomSurname,'</surname>
            <phone>', (generator peekRandomStringNumberOfSize: 6),'</phone>
            <mail>', (generator peekRandomEmailOfSize: 4),'</mail>
            <boolean>', generator peekRandomBoolean printString,'</boolean>
            <section-7>
                <control-8/>
                <mobile>', (generator peekRandomStringNumberOfSize: 6),'</mobile>
                <grid-10>
                    <moneySubject>', (generator peekRandomStringNumberOfSize: 4),'</moneySubject>
                    <quantity>', (generator peekRandomStringNumberOfSize: 4),'</quantity>
                    <currency>', (generator peekRandomStringNumberOfSize: 4),'</currency>
                </grid-10>
                <grid-10>
                    <moneySubject>', (generator peekRandomStringNumberOfSize: 3),'</moneySubject>
                    <quantity>', (generator peekRandomStringNumberOfSize: 3),'</quantity>
                    <currency>', (generator peekRandomStringNumberOfSize: 3),'</currency>
                </grid-10>
                <grid-10>
                    <moneySubject>', (generator peekRandomStringNumberOfSize: 2),'</moneySubject>
                    <quantity>', (generator peekRandomStringNumberOfSize: 2),'</quantity>
                    <currency>', (generator peekRandomStringNumberOfSize: 2),'</currency>
                </grid-10>
            </section-7>
        </section-1-iteration>
    </section-1>
    <section-14>
        <date1>', generator peekRandomDate printMySqlString,'</date1>
        <dateTime>', generator peekRandomTimeStamp asOrbeonDateTimeString,'</dateTime>
        <date2>', generator peekRandomDate printMySqlString,'</date2>
        <date3>', generator peekRandomDate printMySqlString,'</date3>
        <time>', generator peekRandomTime printMySqlString,'</time>
        <details>', (generator peekRandomStringNumberOfSize: 10),'</details>
        <type>1</type>
        <grid-19>
            <options>2 1</options>
            <otherOptions>2</otherOptions>
        </grid-19>
        <section-24>
            <formatedText>&lt;ol&gt;&lt;li&gt;this is a &lt;strong style="line-height: 1.5em;"&gt;formatted&lt;/strong&gt; &lt;em style="line-height: 1.5em;"&gt;text&lt;/em&gt;&lt;/li&gt;&lt;li&gt;&lt;em style="line-height: 1.5em;"&gt;hello&lt;/em&gt;&lt;/li&gt;&lt;/ol&gt;&lt;div&gt;
&lt;ul&gt;&lt;li&gt;&lt;strong&gt;&lt;em&gt;test&lt;/em&gt;&lt;/strong&gt;&lt;/li&gt;&lt;li&gt;&lt;strong&gt;&lt;em&gt;sadf&lt;/em&gt;&lt;/strong&gt;&lt;/li&gt;&lt;/ul&gt;
&lt;strong&gt;&lt;em&gt;&lt;br&gt;&lt;/em&gt;&lt;/strong&gt;&lt;/div&gt;</formatedText>
            <fileAttachment filename="" mediatype="" size=""/>
            <imageAttachment filename="" mediatype="" size=""/>
            <imageAnnotation>
                <image filename="" mediatype="" size=""/>
                <annotation>data:image/png;base64,</annotation>
            </imageAnnotation>
            <autocomplete label=""/>
        </section-24>
    </section-14>
</form>'