section
getXpathForNodeContent
	"The receiver answer a xpath string that points to the content node of the receiver "

	"sectionDefinition isRepeatable ifFalse: [^name].

	^name, '/', name, '-iteration/', sectionDefinition name, '-iteration'"

	^sectionDefinition getXpathForNodeContent