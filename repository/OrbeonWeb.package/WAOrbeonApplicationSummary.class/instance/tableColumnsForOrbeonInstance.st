table columns
tableColumnsForOrbeonInstance
	| columns formDefinition |

	columns := OrderedCollection new.
	columns add: self columnCreatedTime.
	columns add: self columnModifiedTime.
	innerBatchList items ifEmpty: [^columns].
	formDefinition := (innerBatchList items at: 1) definition.
	formDefinition summaryFields do: [:value | | column | "we set labels for the titles of the report"
		column := SewafReportColumn 
						renderBlock: [:each :html | | fieldValue |
							fieldValue := each valueAt: value.
							fieldValue ifNil: [fieldValue := ''].
							"html anchor target: '_blank'; url: (self generateViewUrlFor: each); with: fieldValue."
							html output: fieldValue.
							] 
						title: (formDefinition labelAt:value).
		column sortBlock: (self sortBlockForInstances: value);
			beSortable.
		columns add: column].

	columns add: self columnViewInstance;
		add: self columnEditInstance;
		add: self columnPdfInstance.

	^columns