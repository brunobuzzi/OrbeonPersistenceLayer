other
xmlReportColumns
	| columns formDefinition |

	columns := OrderedCollection new.
	collection isEmpty ifTrue: [^collection].
	formDefinition := (collection at: 1) definition.
	formDefinition summaryFields do: [:value | | column | "we set labels for the titles of the report"
		column := SewafReportColumn 
						renderBlock: [:each :html | | fieldValue |
							fieldValue := each valueAt: value.
							fieldValue ifNil: [fieldValue := ''].
							fieldValue isEmpty ifFalse: [html anchor callback: [self topPanel viewInstance: each]; with: fieldValue].
							] 
						title: (formDefinition labelAt:value).
		column sortBlock: (self sortBlockForInstances: value);
			beSortable.
		columns add: column].

	^columns