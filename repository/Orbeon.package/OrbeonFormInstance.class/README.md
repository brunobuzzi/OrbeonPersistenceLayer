This class has Orbeon Form Instance. Orbeon Form Instances are always created in the NEW link of Orbeon Form.

Instances of this class represent Forms being filled by users and sent to be processed.

username 				- username of the user that filled the form (mysql).
groupname 				- groupname of the user (mysql).
fields              			- aDictionary where each key is a field name and each value is a string value of the field.
definition 				- the OrbeonFormDefinition of the receiver.
fieldsValues 			- aDictionary where each key is the field name and each value is a AppFieldValueHolder.
repeatFieldsValues 	- aDictionary with the repeats components of the form and it's values.
sections					- aDictionary with the section components of the form and it's values.
externalOwner		- an external owner to be used by third parties packages as Orbeon Form Processes where the <externalOwner> is an OrbeonFormTransition. 

externalOwner:
Using this variable third party packages can use the service layer of Orbeon Form to query forms with some values and after the result (collection of OrbeonFormInstance) collect <externalOwner> variable to access to the specific domain object.