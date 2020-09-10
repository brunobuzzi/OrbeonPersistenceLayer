xml request
requestXmlForGenericSummaryWithSearch: textToSearch

	^'<search>
    <query/>
    <query control="input" html-label="false" match="substring" name="name" path="section-1[1]/section-1-iteration[1]/name[1]" search-field="true" summary-field="true" type="xs:string">',
textToSearch,
    '</query>
    <page-size>10</page-size>
    <page-number>1</page-number>
    <lang>en</lang>
</search>'