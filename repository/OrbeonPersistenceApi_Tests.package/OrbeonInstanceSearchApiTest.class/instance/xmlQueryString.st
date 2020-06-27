other
xmlQueryString

	^ '<?xml version="1.0" encoding="UTF-8"?>
<search xmlns:ev="http://www.w3.org/2001/xml-events" xmlns:fr="http://orbeon.org/oxf/xml/form-runner" xmlns:frf="java:org.orbeon.oxf.fr.FormRunner" xmlns:p="http://www.orbeon.com/oxf/pipeline" xmlns:saxon="http://saxon.sf.net/" xmlns:xbl="http://www.w3.org/ns/xbl" xmlns:xf="http://www.w3.org/2002/xforms" xmlns:xh="http://www.w3.org/1999/xhtml" xmlns:xi="http://www.w3.org/2001/XInclude" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xxf="http://orbeon.org/oxf/xml/xforms" xmlns:xxi="http://orbeon.org/oxf/xml/xinclude">
	<query/>
	<query control="input" html-label="false" match="substring" name="name" path="section-12/name" search-field="true" summary-field="true" type="xs:string"/>
	<query control="input" html-label="false" match="substring" name="amount" path="section-12/amount" search-field="true" summary-field="true" type="xs:positiveInteger"/>
	<page-size>10</page-size>
	<page-number>1</page-number>
	<lang>en</lang>
</search>'