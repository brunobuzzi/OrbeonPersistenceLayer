other
hasCreatePermissionOn: anObeonFormDefinition
	"Answer whether the receiver has permission <permissionName> on Orbeon Form Definition <anObeonFormDefinition>"

	^self hasPermission: 'create' on: anObeonFormDefinition