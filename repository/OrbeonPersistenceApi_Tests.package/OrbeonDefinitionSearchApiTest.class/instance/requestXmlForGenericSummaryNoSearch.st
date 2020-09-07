xml request
requestXmlForGenericSummaryNoSearch

	^'<search>
    <query/>
    <query control="output" html-label="false" match="substring" name="application-name" path="xh:head[1]/xf:model[@id = ''fr-form-model''][1]/xf:instance[@id = ''fr-form-metadata'']/*[1]/application-name[1]" search-field="true" summary-field="true" type="xs:string"/>
    <query control="output" html-label="false" match="substring" name="form-name" path="xh:head[1]/xf:model[@id = ''fr-form-model''][1]/xf:instance[@id = ''fr-form-metadata'']/*[1]/form-name[1]" search-field="true" summary-field="true" type="xs:string"/>
    <query control="output" html-label="false" match="substring" name="title" path="xh:head[1]/xf:model[@id = ''fr-form-model''][1]/xf:instance[@id = ''fr-form-metadata'']/*[1]/title[@xml:lang = $fb-lang][1]" search-field="true" summary-field="true" type="xs:string"/>
    <query control="output" html-label="false" match="substring" name="description" path="xh:head[1]/xf:model[@id = ''fr-form-model''][1]/xf:instance[@id = ''fr-form-metadata'']/*[1]/description[@xml:lang = $fb-lang][1]" search-field="true" summary-field="true" type="xs:string"/>
    <page-size>10</page-size>
    <page-number>1</page-number>
    <lang>en</lang>
</search>'