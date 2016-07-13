other
add: permissionName toAll: arrayRole

	arrayRole do: [:eachRole | self add: permissionName to: eachRole]