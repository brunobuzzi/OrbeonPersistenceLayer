other
test
|str|
str := '<search>
    <query/>
    <query control="input" html-label="false" match="substring" name="completeName" path="section-1[1]/completeName[1]" search-field="true" summary-field="true" type="xs:string"/>
    <page-size>10</page-size>
    <page-number>1</page-number>
    <lang>en</lang>
</search>'.
(OrbeonInstanceSearchApi for: 
(OrbeonApplication applicationNamed: 'sales-application')
formName: 'customer')
	xmlSearchDefinitionDocument: (XMLDOMParser parse: str);
	createQueryNodes;
	getPageSize;
	getPageNumber;
	group: 'admin';
	user: 'admin';
	executeQuery