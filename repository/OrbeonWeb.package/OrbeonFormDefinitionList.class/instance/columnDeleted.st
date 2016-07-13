other
columnDeleted

		^(SewafReportColumn selector: #deleted title: 'Deleted' onClick: [:each | parent renderFormInstanceFor: each])
			sortBlock: [:a :b | a deleted < b deleted ];
			beSortable;
			yourself