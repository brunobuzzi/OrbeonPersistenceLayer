decode
decodeFromUTF8: xmlStringToDecode

	^((GRCodec forEncoding: 'utf-8') decode: xmlStringToDecode) asString