render
renderFormDefinitionGraphicsFormOn: html

	html form with: [
		html fieldSet with: [
			self renderFormFieldComboOn: html.
			html label attributeAt: 'for' put: 'start'; with: ('Start' translateFor: self session user).
			html textInput attributeAt: 'id' put: 'start'; callback: [:value | self addSearchValue: value named: 'start']; with: (self searchValueAt: 'start').
			html label attributeAt: 'for' put: 'end'; with: ('End' translateFor: self session user).
			html textInput attributeAt: 'id' put: 'end'; callback: [:value | self addSearchValue: value named: 'end']; with: (self searchValueAt: 'end').
			html submitButton callback: [self drawTypesGraph]; with: 'Def. Types'. 
			html submitButton callback: [self drawFieldDistributionGraph]; with: 'Field Distr'.
			html checkbox value: (self searchValueAt: 'dayHasContent'); callback: [:value | self addSearchValue: value named: 'dayHasContent'].
			html submitButton callback: [self drawFormInstancesCreationDayDistributionGraph]; with: 'Inst. Cr. Distr'.
			html submitButton callback: [self drawFormInstancesModificationDayDistributionGraph]; with: 'Inst. Mod Distr'.
			html submitButton callback: [self drawFormInstancesDayDistributionGraph]; with: 'Inst. Distr'.
			html submitButton callback: [self drawFormInstancesPieByMonthGraph]; with: 'Pie by Month'.
			html checkbox attributeAt: 'id' put: 'all-versions'; callback: [:value | self addSearchValue: value named: 'all-version'].
			html label attributeAt: 'for' put: 'id'; with: 'All Versions'.
		]
	]