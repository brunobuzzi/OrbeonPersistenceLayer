other
getLabelOf: fieldName
	| label |

	label := ((GRCodec forEncoding: 'utf-8') decode: (definition labelAt: fieldName)) asString.

	label := label copyWithoutAll: String lf.

	^label