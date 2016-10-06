chart command
drawSelectedChart

	(self isGlobalScope and: [self isDayDistributionCreationChart]) ifTrue: [^self drawGlobalAppFormInstancesCreationDayDistributionGraph].

	(self isGlobalScope and: [self isDayDistributionModificationChart]) ifTrue: [^self drawGlobalAppFormInstancesModificationDayDistributionGraph].

	(self isGlobalScope and: [self isDonutCreationByMonthChart]) ifTrue: [^self drawGlobalFormInstancesCreationPieByMonthGraph].

	(self isGlobalScope and: [self isDonutModificationByMonthChart]) ifTrue: [^self drawGlobalFormInstancesModificationPieByMonthGraph].