other
getLabelOf: fieldName
	| label |

	label := [((GRCodec forEncoding: 'utf-8') decode: (definition labelAt: fieldName)) asString] on: Error do: [:err | definition labelAt: fieldName].

	label := label copyWithoutAll: String lf.

	^label