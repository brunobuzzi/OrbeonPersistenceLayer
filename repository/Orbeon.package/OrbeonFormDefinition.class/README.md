This class represent instances of a Orbeon Form Definition. Orbeon Form Definitions are always created inside the Form Builder.
Instances of this class represent definitions created inside the Form Builder.

instances 				- aDictionary with instances of this Definitions (OrbeonFormInstances).
instanceDefinition 	- not used.
fieldInstances			- aDictionary of UnorderedCollections where each key is anUnorderedCollection with instances of FormFieldValue.
labels 						- aDictionary mapping field's name with the label to be displayed.
synchronizations 	- a collection of synchronization with MySQL database.
permissions 			- permisions of the role over the form definition.
fieldsType  				- aDictionary mapping field's name with field's type.
isPublished 				- whether the receiver is published (accesible from web) or not
sectionDefinitions	- aDictionary with all sections of the form definition.