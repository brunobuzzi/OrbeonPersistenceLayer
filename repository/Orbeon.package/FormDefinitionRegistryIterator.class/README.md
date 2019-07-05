These classes are intented to be an Iterator/ReadStream over OrbeonFormInstance for particular version in Form Summary.
OrbeonPublishedFormDefinition instances can NOT be used directly because of version conflict between the same version number.
Remember that the same version number can have more than one instance of OrbeonPublishedFormDefinition. 
This is because an Orbeon user can force the creation of two incompatible forms with the same version number.
If this is the case then we store two instances of OrbeonPublishedFormDefinition with the same number.
One stored in FormDefinitionRegistry oldVersions and another in FormDefinitionRegistry currentVersions.

But when a user is iterating over the Summary of that version we must simulate as it is only one collection (because is the same version).
This is achieved with this herarchy.

definitionRegistry - the FormDefinitionRegistry of the application/form-name.
streams - a Dictionay where the key is anOrbeonPublishedFormDefinition and the value is a ReadStream on its instances keys.
currentStream - the current ReadStream in usage of <streams>.                  
currentDefinition - the current OrbeonPublishedFormDefinition.
versions - the collection of OrbeonPublishedFormDefinition (FormDefinitionRegistry currentVersions + oldVersions).
user - the logged user.
group - the role of the user.
fromIndex - the index of the first OrbeonFormInstance to show.
toIndex - the index of the last OrbeonFormInstance to show.
formsInRange - a collection of OrbeonFormInstance from <fromIndex> to <toIndex>. It can be a mix of OrbeonFormInstance of two o more OrbeonPublishedFormDefinition.
globalSize - the total number of OrbeonFormInstance including all OrbeonPublishedFormDefinition.
currentVersion - the version number.