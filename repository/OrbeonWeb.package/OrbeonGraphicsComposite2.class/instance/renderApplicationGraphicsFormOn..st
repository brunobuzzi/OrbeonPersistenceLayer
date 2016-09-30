other
renderApplicationGraphicsFormOn: html

		html form with: [
			html fieldSet with: [
				html submitButton callback: [self drawApplicationFormsGraph]; with: 'App. Forms Def.'.
				html submitButton callback: [self drawAppFormInstancesCreationDayDistributionGraph]; with: 'Inst. Cr. Distr'.
				html checkbox value: (self searchValueAt: 'dayHasContent'); callback: [:value | self addSearchValue: value named: 'dayHasContent'].
				html submitButton callback: [self drawAppFormInstancesDayDistributionGraph]; with: 'Inst. Distr'.
			]
		]