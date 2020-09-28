xml request issue369
requestXmlForGenericSummaryNoSearch_369

	^'<?xml version="1.0" encoding="UTF-8"?>
<search xmlns:ev="http://www.w3.org/2001/xml-events" xmlns:fr="http://orbeon.org/oxf/xml/form-runner" xmlns:frf="java:org.orbeon.oxf.fr.FormRunner" xmlns:p="http://www.orbeon.com/oxf/pipeline" xmlns:saxon="http://saxon.sf.net/" xmlns:xbl="http://www.w3.org/ns/xbl" xmlns:xf="http://www.w3.org/2002/xforms" xmlns:xh="http://www.w3.org/1999/xhtml" xmlns:xi="http://www.w3.org/2001/XInclude" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xxf="http://orbeon.org/oxf/xml/xforms" xmlns:xxi="http://orbeon.org/oxf/xml/xinclude">
	<query/>
	<query control="input" html-label="false" match="substring" name="description" path="section-1/description" search-field="true" summary-field="true" type="xs:string"/>
	<query control="select1" html-label="false" match="substring" name="type" path="section-2/grid-3/type" search-field="true" summary-field="true" type="xs:string"/>
	<query control="date" html-label="false" match="substring" name="date" path="section-2/grid-3/date" search-field="true" summary-field="true" type="xf:date"/>
	<query control="number" html-label="false" match="substring" name="price" path="section-2/grid-3/price" search-field="true" summary-field="true" type="xf:decimal"/>
	<query control="select" html-label="false" match="substring" name="currency" path="section-2/grid-3/currency" search-field="true" summary-field="true" type="xs:string"/>
	<page-size>10</page-size>
	<page-number>1</page-number>
	<lang>en</lang>
</search>'