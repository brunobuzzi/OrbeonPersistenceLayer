distribution
getInstancesDistributionQuantityFrom: startDate to: endDate
	| distribution |

	distribution := Dictionary new.

	self getAllVersions do: [:each | | currentQuantity currentVersionName |
		currentVersionName := each version printString.
		(distribution includesKey: currentVersionName) ifFalse: [distribution at: currentVersionName put: 0].
		currentQuantity := distribution at: currentVersionName.
		distribution at: currentVersionName put: ((each getInstancesQuantityFrom: startDate to: endDate) + currentQuantity).
	].

	^distribution