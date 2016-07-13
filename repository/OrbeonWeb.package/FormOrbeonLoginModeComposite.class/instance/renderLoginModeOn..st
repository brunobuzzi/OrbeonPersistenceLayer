other
renderLoginModeOn: html

	html form with: [
		html fieldSet with:[
			html legend with: 'Login Mode'.
			html radioGroup
				callback: [:value | modeType := value];
				selected: modeType;
				with: [ :group |
					self loginModeNames do: [:each |
						html label: [ group radioButton onChange: 'submit()'; value: each.
							html text: each]]].
			(modeType = self ldapLoginModeName) 
			ifTrue: [self renderLdapOptionsOn: html]
			ifFalse: [self setLocalLoginMode].
			html submitButton callback: [self saveLoginMode]; with: 'Save Login Mode'.
		].
	].