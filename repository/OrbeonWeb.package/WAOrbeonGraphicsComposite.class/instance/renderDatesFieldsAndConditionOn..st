render
renderDatesFieldsAndConditionOn: html

	html fieldSet class: 'margin-top-10px'; with: [
		html legend with: ('Dates, Field and Condition' translateIn: self session).
		html div with: [
			html div class: 'display-block margin-top-15px'; with:[
				html label attributeAt: 'for' put: 'start'; with: ('Start' translateIn: self session).
				html dateInput5 
							class: 'margin-left-10px margin-right-10px';
							attributeAt: 'id' put: 'start'; 
							callback: [:value | self addSearchValue: value named: 'start-date'];
							value: self getStartDate.
			].
			html div class: 'display-block margin-top-15px'; with: [
				html label attributeAt: 'for' put: 'end'; with: ('End  ' translateIn: self session).
				html dateInput5
							class: 'margin-left-10px margin-right-10px';
							attributeAt: 'id' put: 'end'; 
							callback: [:value | self addSearchValue: value named: 'end-date']; 
							value: self getEndDate.
			].
		].

		html div class: 'display-block margin-top-10px'; with: [self renderFormFieldComboOn: html].

		html div class: 'display-block margin-top-10px'; with: [self renderChartConditionOn: html].

		html div class: 'display-block margin-top-10px'; with: [self renderRenderChartOn: html].
	].