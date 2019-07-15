table columns
columnDeleted

		^(SewafReportColumn selector: #deleted title: 'Deleted')
			sortBlock: [:a :b | a deleted < b deleted ];
			beSortable;
			yourself