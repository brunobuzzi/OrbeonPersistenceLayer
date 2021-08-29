other
defaultLibrarySourceTemplate
	"This method is called when the OrbeonApplication was not found. This can be caused by Orbeon calling library forms"

	^(GRCodec forEncoding: 'utf-8') decode: (systemRoot defaultXmlDefinition: formName app: appName)