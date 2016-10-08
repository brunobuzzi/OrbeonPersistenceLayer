chart command
drawSelectedChart

	(self isGlobalScope and: [self isDayDistributionCreationChart]) ifTrue: [^self drawGlobalAppFormInstancesCreationDayDistributionGraph].
	(self isGlobalScope and: [self isDayDistributionModificationChart]) ifTrue: [^self drawGlobalAppFormInstancesModificationDayDistributionGraph].
	(self isGlobalScope and: [self isDonutCreationByMonthChart]) ifTrue: [^self drawGlobalFormInstancesCreationPieByMonthGraph].
	(self isGlobalScope and: [self isDonutModificationByMonthChart]) ifTrue: [^self drawGlobalFormInstancesModificationPieByMonthGraph].
	(self isGlobalScope and: [self isDonutQuantityChart]) ifTrue: [^self drawGlobalDonutQuantityChart].
	(self isGlobalScope and: [self isBarQuantityChart]) ifTrue: [^self drawGlobalBarQuantityChart].

	(self isApplicationScope and: [self isDayDistributionCreationChart]) ifTrue: [^self drawAppFormInstancesCreationDayDistributionGraph].
	(self isApplicationScope and: [self isDayDistributionModificationChart]) ifTrue: [^self drawAppFormInstancesModificationDayDistributionGraph].
	(self isApplicationScope and: [self isDonutCreationByMonthChart]) ifTrue: [^self drawAppFormInstancesCreationPieByMonthGraph].
	(self isApplicationScope and: [self isDonutModificationByMonthChart]) ifTrue: [^self drawAppFormInstancesModificationPieByMonthGraph].
	(self isApplicationScope and: [self isDonutQuantityChart]) ifTrue: [^self drawAppDonutQuantityChart].
	(self isApplicationScope and: [self isBarQuantityChart]) ifTrue: [^self drawAppBarQuantityChart].

	(self isFormDefinitionAllVersionsScope and: [self isDayDistributionCreationChart]) ifTrue: [self drawFormRegistryCreationDayDistributionGraph].
	(self isFormDefinitionAllVersionsScope and: [self isDayDistributionModificationChart]) ifTrue: [self drawFormRegistryModificationDayDistributionGraph].
	(self isFormDefinitionAllVersionsScope and: [self isDonutCreationByMonthChart]) ifTrue: [self drawFormRegistryFormInstancesCreationPieByMonthGraph].
	(self isFormDefinitionAllVersionsScope and: [self isDonutModificationByMonthChart]) ifTrue: [self drawFormRegistryFormInstancesModificationPieByMonthGraph].
	(self isFormDefinitionAllVersionsScope and: [self isDonutQuantityChart]) ifTrue: [^self drawFormRegistryDonutQuantityChart].
	(self isFormDefinitionAllVersionsScope and: [self isBarQuantityChart]) ifTrue: [^self drawFormRegistryBarQuantityChart].

	(self isFormDefinitionScope and: [self isDayDistributionCreationChart]) ifTrue: [self drawFormInstancesCreationDayDistributionGraph].
	(self isFormDefinitionScope and: [self isDayDistributionModificationChart]) ifTrue: [self drawFormInstancesModificationDayDistributionGraph].
	(self isFormDefinitionScope and: [self isDonutCreationByMonthChart]) ifTrue: [self drawFormInstancesCreationPieByMonthGraph].
	(self isFormDefinitionScope and: [self isDonutModificationByMonthChart]) ifTrue: [self drawFormInstancesModificationPieByMonthGraph].
	(self isFormDefinitionScope and: [self isDonutFieldTypeDistributionChart]) ifTrue: [self drawTypesGraph].

	(self isFieldValuesScope and: [self isDayDistributionCreationChart]) ifTrue: [^self drawFieldInstancesCreationDayDistributionGraph].
	(self isFieldValuesScope and: [self isDayDistributionModificationChart]) ifTrue: [^self drawFieldInstancesModificationDayDistributionGraph].
	(self isFieldValuesScope and: [self isDonutCreationByMonthChart]) ifTrue: [^self drawFieldInstancesCreationPieByMonthGraph].
	(self isFieldValuesScope and: [self isDonutModificationByMonthChart]) ifTrue: [^self drawFieldInstancesModificationPieByMonthGraph].
	(self isFieldValuesScope and: [self isDonutQuantityChart]) ifTrue: [^self drawFieldInstancesDonutQuantityChart].
	(self isFieldValuesScope and: [self isBarQuantityChart]) ifTrue: [^self drawFieldInstancesBarQuantityChart].