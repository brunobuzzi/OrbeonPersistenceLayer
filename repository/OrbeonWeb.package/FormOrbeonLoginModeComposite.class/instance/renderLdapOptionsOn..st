other
renderLdapOptionsOn: html

	self getGemStoneServerConfiguration setLdapFor: 'orbeon-processes-web'.
	html break.
	html label with: 'Ldap IP'.
	html textInput callback: [:value | self getGemStoneServerConfiguration loginModeForProcessWeb ldapIP: value]; 
		with: self getGemStoneServerConfiguration ldapIpForWebProcess.
	html label with: 'Distinguished Name'.
	html textInput callback: [:value | self getGemStoneServerConfiguration loginModeForProcessWeb dn: value]; 
		with: self getGemStoneServerConfiguration dnForWebProcess.
	html label with: 'Organizational Unit'.
	html textInput callback: [:value | self getGemStoneServerConfiguration loginModeForProcessWeb ou: value]; 
		with: self getGemStoneServerConfiguration ouForWebProcess.
	html label with: 'Bind Password'.
	html textInput callback: [:value | self getGemStoneServerConfiguration loginModeForProcessWeb bindPassword: value]; 
		with: self getGemStoneServerConfiguration bindPasswordForWebProcess.