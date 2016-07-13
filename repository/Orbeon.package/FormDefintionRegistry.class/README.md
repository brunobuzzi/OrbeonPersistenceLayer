This class holds all versions of a particular Form Definition <OrboenFormDefinition>.

Each OrbeonApplication has a dictionary where the key is a <form-name> and the value is an instance of this class.

orbeonApplication 	- owner of the receiver
currentVersions 		- anOrderedCollection with current versions (in this collection can be only one definition with number 1,2,3,...)
oldVersions				- anOrderedCollection with old versions (this collection can have more than one definition with number X)
									can have multiple definition of version 4 for example.
savedDefinitions		- anOrderedCollection of <anOrbeonSavedFormDefinition>. Definitions saved before been published.

If in Orbeon a Definition is update without changing the version and has structure change --> we generate another definition that will hold the new instances. This new definition goes to <currentVersions> and the old one is moved to <oldVersions>.