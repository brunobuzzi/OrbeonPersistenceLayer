other
columnModifiedUser

		^(SewafReportColumn selector: #modifiedUser title: 'Modified By' onClick: [:each | mainPanel renderFormInstanceFor: each])
			sortBlock: [:a :b | a modifiedUser < b modifiedUser ];
			beSortable;
			yourself