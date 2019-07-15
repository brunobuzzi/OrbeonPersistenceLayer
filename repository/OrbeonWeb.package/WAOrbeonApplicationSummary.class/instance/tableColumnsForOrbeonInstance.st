tables
tableColumnsForOrbeonInstance
	| columns formDefinition |

	columns := OrderedCollection new.
	innerBatchList items ifEmpty: [^columns].
	formDefinition := (innerBatchList items at: 1) definition.
	formDefinition summaryFields do: [:value | | column | "we set labels for the titles of the report"
		column := SewafReportColumn 
						renderBlock: [:each :html | | fieldValue |
							fieldValue := each valueAt: value.
							fieldValue ifNil: [fieldValue := ''].
							html anchor target: '_blank'; url: (self generateViewUrlFor: each); with: fieldValue.
							] 
						title: (formDefinition labelAt:value).
		column sortBlock: (self sortBlockForInstances: value);
			beSortable.
		columns add: column].

	^columns