render
renderApplicationGraphicsFormOn: html

		html form with: [
			html fieldSet with: [
				html label attributeAt: 'for' put: 'appStart'; with: ('Start' translateFor: self session user).
				html textInput attributeAt: 'id' put: 'appStart'; callback: [:value | self addSearchValue: value named: 'appStart']; with: (self searchValueAt: 'appStart').
				html label attributeAt: 'for' put: 'appEnd'; with: ('End' translateFor: self session user).
				html textInput attributeAt: 'id' put: 'appEnd'; callback: [:value | self addSearchValue: value named: 'appEnd']; with: (self searchValueAt: 'appEnd').
				html submitButton callback: [self drawGlobalAppFormInstancesCreationDayDistributionGraph]; with: 'Global Inst. Cr. Distr'.
				html submitButton callback: [self drawGlobalFormInstancesCreationPieByMonthGraph]; with: 'Global. Cr. Pie by Month'.
				html submitButton callback: [self drawAppFormInstancesCreationPieByMonthGraph]; with: 'Inst. Cr. Pie by Month'.
				html submitButton callback: [self drawAppFormInstancesCreationDayDistributionGraph]; with: 'Inst. Cr. Distr'.

				html submitButton callback: [self drawGlobalAppFormInstancesModificationDayDistributionGraph]; with: 'Global Inst. Mod. Distr'.
				html submitButton callback: [self drawGlobalAppFormInstancesDayDistributionGraph]; with: 'Global Inst. Distr'.
				html submitButton callback: [self drawGlobalFormInstancesModificationPieByMonthGraph]; with: 'Global. Mod. Pie by Month'.
				html submitButton callback: [self drawAppFormInstancesModificationPieByMonthGraph]; with: 'Inst. Mod. Pie by Month'.
				html submitButton callback: [self drawAppFormInstancesModificationDayDistributionGraph]; with: 'Inst. Mod. Distr'.

				html submitButton callback: [self drawApplicationFormsGraph]; with: 'App. Forms Def.'.

				html checkbox value: (self searchValueAt: 'dayHasContent'); callback: [:value | self addSearchValue: value named: 'dayHasContent'].
				html submitButton callback: [self drawAppFormInstancesDayDistributionGraph]; with: 'Inst. Distr'.
			]
		]