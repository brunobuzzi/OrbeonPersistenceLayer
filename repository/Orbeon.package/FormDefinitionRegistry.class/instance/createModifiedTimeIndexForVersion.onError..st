indexes
createModifiedTimeIndexForVersion: version onError: errorBlock
	"The receiver create (initialization - executed only once) an Index for the form version <version> at inst var named <modifiedTime>.
	If an error occur while creating the index then evaluates the niladic block <errorBlock>"

	[GsIndexSpec new
		equalityIndex: 'each.modifiedTime' lastElementClass: TimeStamp options: self defaultIndexOptions;
		createIndexesOn: (self instancesSetOfVersion: version)] on: Error do: [:ex | ^errorBlock value].