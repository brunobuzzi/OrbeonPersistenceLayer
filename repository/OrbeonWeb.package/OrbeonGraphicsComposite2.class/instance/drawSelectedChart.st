chart command
drawSelectedChart

	(self isGlobalScope and: [self isDayDistributionCreationChart]) ifTrue: [^self drawGlobalAppFormInstancesCreationDayDistributionGraph].
	(self isGlobalScope and: [self isDayDistributionModificationChart]) ifTrue: [^self drawGlobalAppFormInstancesModificationDayDistributionGraph].
	(self isGlobalScope and: [self isDonutCreationByMonthChart]) ifTrue: [^self drawGlobalFormInstancesCreationPieByMonthGraph].
	(self isGlobalScope and: [self isDonutModificationByMonthChart]) ifTrue: [^self drawGlobalFormInstancesModificationPieByMonthGraph].
	(self isGlobalScope and: [self isDonutQuantityChart]) ifTrue: [^self drawGlobalDonutQuantityChart].

	(self isApplicationScope and: [self isDayDistributionCreationChart]) ifTrue: [^self drawAppFormInstancesCreationDayDistributionGraph].
	(self isApplicationScope and: [self isDayDistributionModificationChart]) ifTrue: [^self drawAppFormInstancesModificationDayDistributionGraph].
	(self isApplicationScope and: [self isDonutCreationByMonthChart]) ifTrue: [^self drawAppFormInstancesCreationPieByMonthGraph].
	(self isApplicationScope and: [self isDonutModificationByMonthChart]) ifTrue: [^self drawAppFormInstancesModificationPieByMonthGraph].
	(self isApplicationScope and: [self isDonutQuantityChart]) ifTrue: [^self drawAppDonutQuantityChart].

	(self isFormDefinitionAllVersionsScope and: [self isDayDistributionCreationChart]) ifTrue: [self drawFormRegistryCreationDayDistributionGraph].
	(self isFormDefinitionAllVersionsScope and: [self isDayDistributionModificationChart]) ifTrue: [self drawFormRegistryModificationDayDistributionGraph].
	(self isFormDefinitionAllVersionsScope and: [self isDonutCreationByMonthChart]) ifTrue: [self drawFormRegistryFormInstancesCreationPieByMonthGraph].
	(self isFormDefinitionAllVersionsScope and: [self isDonutModificationByMonthChart]) ifTrue: [self drawFormRegistryFormInstancesModificationPieByMonthGraph].
	(self isFormDefinitionAllVersionsScope and: [self isDonutQuantityChart]) ifTrue: [^self drawFormRegistryDonutQuantityChart].

	(self isFormDefinitionScope and: [self isDayDistributionCreationChart]) ifTrue: [self drawFormDefinitionCreationDayDistributionGraph].
	(self isFormDefinitionScope and: [self isDayDistributionModificationChart]) ifTrue: [self drawFormDefinitionModificationDayDistributionGraph].
	(self isFormDefinitionScope and: [self isDonutCreationByMonthChart]) ifTrue: [self drawFormDefinitionFormInstancesCreationPieByMonthGraph].
	(self isFormDefinitionScope and: [self isDonutModificationByMonthChart]) ifTrue: [self drawFormDefinitionFormInstancesModificationPieByMonthGraph].