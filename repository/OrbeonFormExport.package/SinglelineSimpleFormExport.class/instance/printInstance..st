other
printInstance: anOrbeonFormInstance

	definition getFieldsNames keysAndValuesDo: [:index :fieldName |  | fieldValue |
		fieldValue := ((GRCodec forEncoding: 'utf-8') decode: (anOrbeonFormInstance valueAt: fieldName)) asString copyWithoutAll: String lf.
		(printArray at: lineNumber) at: index + 1 put: fieldValue].