other
getXmlQuery

^'<?xml version="1.0" encoding="UTF-8"?>
<search xmlns:ev="http://www.w3.org/2001/xml-events" xmlns:exf="http://www.exforms.org/exf/1-0" xmlns:f="http://orbeon.org/oxf/xml/formatting" xmlns:fr="http://orbeon.org/oxf/xml/form-runner" xmlns:frf="java:org.orbeon.oxf.fr.FormRunner" xmlns:index="org.orbeon.oxf.fr.relational.Index" xmlns:p="http://www.orbeon.com/oxf/pipeline" xmlns:saxon="http://saxon.sf.net/" xmlns:version="java:org.orbeon.oxf.common.Version" xmlns:xbl="http://www.w3.org/ns/xbl" xmlns:xf="http://www.w3.org/2002/xforms" xmlns:xh="http://www.w3.org/1999/xhtml" xmlns:xi="http://www.w3.org/2001/XInclude" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xxf="http://orbeon.org/oxf/xml/xforms" xmlns:xxi="http://orbeon.org/oxf/xml/xinclude">
	<query/>
	<query control="input" html-label="false" match="substring" name="name" path="section-1[1]/section-1-iteration[1]/name[1]" search-field="true" summary-field="true" type="xs:string"/>
	<query control="input" html-label="false" match="substring" name="surname" path="section-1[1]/section-1-iteration[1]/surname[1]" search-field="true" summary-field="true" type="xs:string"/>
	<query control="us-phone" html-label="false" match="substring" name="phone" path="section-1[1]/section-1-iteration[1]/phone[1]" search-field="true" summary-field="true" type="xs:string"/>
	<query control="input" html-label="false" match="substring" name="mail" path="section-1[1]/section-1-iteration[1]/mail[1]" search-field="true" summary-field="true" type="xf:email"/>
	<query control="input" html-label="false" match="substring" name="boolean" path="section-1[1]/section-1-iteration[1]/boolean[1]" search-field="true" summary-field="true" type="xf:boolean"/>
	<query control="input" html-label="false" match="substring" name="mobile" path="section-1[1]/section-1-iteration[1]/section-7[1]/mobile[1]" search-field="true" summary-field="true" type="xs:string"/>
	<query control="select1" html-label="false" match="substring" name="moneySubject" path="section-1[1]/section-1-iteration[1]/section-7[1]/grid-10[1]/moneySubject[1]" search-field="true" summary-field="true" type="xs:string"/>
	<query control="number" html-label="false" match="substring" name="quantity" path="section-1[1]/section-1-iteration[1]/section-7[1]/grid-10[1]/quantity[1]" search-field="true" summary-field="true" type="xf:decimal"/>
	<query control="currency" html-label="false" match="substring" name="currency" path="section-1[1]/section-1-iteration[1]/section-7[1]/grid-10[1]/currency[1]" search-field="true" summary-field="true" type="xf:decimal"/>
	<query control="input" html-label="false" match="substring" name="date1" path="section-14[1]/date1[1]" search-field="true" summary-field="true" type="xf:date"/>
	<query control="datetime" html-label="false" match="substring" name="dateTime" path="section-14[1]/dateTime[1]" search-field="true" summary-field="true" type="xf:dateTime"/>
	<query control="dropdown-date" html-label="false" match="substring" name="date2" path="section-14[1]/date2[1]" search-field="true" summary-field="true" type="xf:date"/>
	<query control="fields-date" html-label="false" match="substring" name="date3" path="section-14[1]/date3[1]" search-field="true" summary-field="true" type="xf:date"/>
	<query control="input" html-label="false" match="substring" name="time" path="section-14[1]/time[1]" search-field="true" summary-field="true" type="xf:time">11:29:00</query>
	<query control="textarea" html-label="false" match="substring" name="details" path="section-14[1]/details[1]" search-field="true" summary-field="true" type="xs:string"/>
	<query control="select1" html-label="false" match="substring" name="type" path="section-14[1]/type[1]" search-field="true" summary-field="true" type="xs:string"/>
	<query control="select" html-label="false" match="substring" name="options" path="section-14[1]/grid-19[1]/options[1]" search-field="true" summary-field="true" type="xs:string"/>
	<query control="select1" html-label="false" match="substring" name="otherOptions" path="section-14[1]/grid-19[1]/otherOptions[1]" search-field="true" summary-field="true" type="xs:string"/>
	<page-size>10</page-size>
	<page-number>1</page-number>
	<lang>en</lang>
</search>'