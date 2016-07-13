other
allManagerRolNames

	^self subclasses collect: [:each | each roleName]