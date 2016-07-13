other
hasPermission: permissionName on: anObeonFormDefinition
	"Answer whether the receiver has permission <permissionName> on Orbeon Form Definition <anObeonFormDefinition>"

	^true
	"^rols anySatisfy: [:each | anObeonFormDefinition hasPermission: permissionName for: each]"