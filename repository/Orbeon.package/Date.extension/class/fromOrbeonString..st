*orbeon
fromOrbeonString: aString
	"Create an instance of the receiver from Orbeon formated string date <aString>.
	The Orbeon <oxf.xforms.format.input.date> configuration in XML file properties-loca.xml MUST be equal to: 
	self getOrbeonWebServerConfiguration dateFormat"

	^self fromOrbeonString: aString 
			format: self getOrbeonWebServerConfiguration dateFormat