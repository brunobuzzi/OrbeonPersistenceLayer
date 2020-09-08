xml request
requestXmlForGenericSummaryWithSearch: applicationToSearch

	^'<search>
    <query/>
    <query control="input" html-label="false" match="substring" name="nombre" path="section-1[1]/nombre[1]" search-field="true" summary-field="true" type="xs:string">
     John Smith
    </query>
    <page-size>10</page-size>
    <page-number>1</page-number>
    <lang>en</lang>
</search>'