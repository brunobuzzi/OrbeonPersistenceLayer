table columns
columnModifiedTime

		^(SewafReportColumn selector: #modifiedTime title: 'Modified')
			sortBlock: [:a :b | a modifiedTime < b modifiedTime ];
			beSortable;
			yourself