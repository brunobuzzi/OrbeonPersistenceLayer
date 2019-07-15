table columns
columnModifiedUser

		^(SewafReportColumn selector: #modifiedUser title: 'Modified By')
			sortBlock: [:a :b | a modifiedUser < b modifiedUser ];
			beSortable;
			yourself