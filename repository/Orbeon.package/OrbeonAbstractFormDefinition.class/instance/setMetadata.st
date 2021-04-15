other
setMetadata
	| formReader |

	formReader := self newFormBuilder.

	self setMetadataWith: formReader.