table columns
columnVersion

		^(SewafReportColumn selector: #version title: 'Version')
			sortBlock: [:a :b | a version < b version];
			yourself