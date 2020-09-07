xml request
requestXmlForGenericSummaryWithSearch: applicationToSearch

	^'<search>
    <query />
    <query name="application-name" path="xh:head[1]/xf:model[@id = ''fr-form-model''][1]/xf:instance[@id = ''fr-form-metadata'']/*[1]/application-name[1]" type="xs:string" control="output" search-field="true" summary-field="true" match="substring" html-label="false">',applicationToSearch,'</query>
    <query name="form-name" path="xh:head[1]/xf:model[@id = ''fr-form-model''][1]/xf:instance[@id = ''fr-form-metadata'']/*[1]/form-name[1]" type="xs:string" control="output" search-field="true" summary-field="true" match="substring" html-label="false" />
    <query name="title" path="xh:head[1]/xf:model[@id = ''fr-form-model''][1]/xf:instance[@id = ''fr-form-metadata'']/*[1]/title[@xml:lang = $fb-lang][1]" type="xs:string" control="output" search-field="true" summary-field="true" match="substring" html-label="false" />
    <query name="description" path="xh:head[1]/xf:model[@id = ''fr-form-model''][1]/xf:instance[@id = ''fr-form-metadata'']/*[1]/description[@xml:lang = $fb-lang][1]" type="xs:string" control="output" search-field="true" summary-field="true" match="substring" html-label="false" />
    <page-size>10</page-size>
    <page-number>1</page-number>
    <lang>en</lang>
</search>'