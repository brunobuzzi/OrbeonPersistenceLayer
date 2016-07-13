other
renderSearchFieldsOn: html

	html form id: 'form-search';
	with: [html fieldSet
		with:[
			html legend with: 'Search Form'.
			html label for: 'searchFields'; with: 'Field'.
			html select 
				list: self selectedDefinition searchFields;
				callback: [:value | self selectedSearchField: value];
				selected: selectedSearchField; 
				id: 'searchFields';
				onChange: 'submit()'. "this cause the page to render again and then we apply the 'hidden class' "
			html label for: 'initSearch'; with: 'From'.
			initialSearchField := html textInput id: 'initSearch'; title: 'Search'; yourself.
			initialSearchField callback: [:value | initialSearch := value]. "we store the entered filter on <searchFields>"
			(parent selectedFieldHasRangeSearch: selectedSearchField) "we get the type"
			ifTrue: [html label for: 'endSearch'; with: 'To'.
				endSearchField := html textInput id: 'endSearch'; title: 'Search'; yourself.
				endSearchField callback: [:value | endSearch := value].] "we store the entered filter on <searchFields>"
			ifFalse: [endSearchField := nil].
			html div id: 'search-buttons';
				with: [html submitButton callback: [self searchForm]; with: 'Search'].
						html submitButton callback: [self exportToCSV]; with: 'Export']].