other
columnDeleted

		^(SewafReportColumn selector: #deleted title: 'Deleted' onClick: [:each | mainPanel renderFormInstanceFor: each])
			sortBlock: [:a :b | a deleted < b deleted ];
			beSortable;
			yourself