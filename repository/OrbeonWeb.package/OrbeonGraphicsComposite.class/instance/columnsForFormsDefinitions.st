other
columnsForFormsDefinitions

		^OrderedCollection new  
			add: ((SewafReportColumn selector: #printShortId title: 'Id' onClick: [:each | (selectedDefinition == each) ifFalse: [selectedDefinition := each] ifTrue: [selectedDefinition := nil]]) beSortable beSearchable; sortBlock: [:a :b | a id <= b id]; yourself);
			add: ((SewafReportColumn selector: #getApplicationName title: 'Application') beSortable beSearchable; sortBlock: [:a :b | a getApplicationName <= b getApplicationName]; yourself);
			add: ((SewafReportColumn selector: #formName title: 'Form') beSortable beSearchable; sortBlock: [:a :b | a formName <= b formName]; yourself);
			add: ((SewafReportColumn selector: #version title: 'Version') beSortable beSearchable; sortBlock: [:a :b | a version <= b version]; yourself);
			add: ((SewafReportColumn selector: #modifiedTime title: 'Last Mod') beSortable beSearchable; sortBlock: [:a :b | a modifiedTime <= b modifiedTime]; yourself);
			yourself