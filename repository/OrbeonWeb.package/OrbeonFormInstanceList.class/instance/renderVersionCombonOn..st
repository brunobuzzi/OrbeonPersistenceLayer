other
renderVersionCombonOn: html
	| application registry versions |

	application := self getOrbeonApplicationClass applicationNamed: self selectedDefinition getApplicationName ifNone: [^self].
	registry := application registryForFormNamed: self selectedDefinition formName ifNone: [^self].

	versions := self allArrayText ,registry getCurrentVersionNumbers.

	html form id: 'form-version-search';
	with: [html fieldSet
		with:[
			html label for: 'versions'; with: 'Version'.
			html select 
				list: versions;
				callback: [:value | self onVersionChanged: value];
				selected: (selectedVersion ifNil: [versions first]); 
				id: 'versions';
				onChange: 'submit()'. "this cause the page to render again "]].