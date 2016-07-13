This class compare two OrbeonFormDefinition and answer a collection with the differences.

It is used when an Orbeon Definition in the database (MySQL) has been updated. 

If the comparison IS Empty then the forms are equal and there is NO need to create another version.

If the comparison is NOT Empty then the forms are NOT equal and we should create another version.

This is an automatic process.