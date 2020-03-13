orbeon sections
formGridComponentsIn: xmlSection
	"The receiver get the repeat component of Orbeon Form Definition <xmlDefinition>"
	| grids |

	grids := OrderedCollection new.

	"includes attribute -repeat-"
	(xmlSection xPath: self defaultOrbeonXpathVersion frGridsRepeatXpath) addAllTo: grids. 
	
	^grids