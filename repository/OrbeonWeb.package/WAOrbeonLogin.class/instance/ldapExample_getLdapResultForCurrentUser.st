ldap_example
ldapExample_getLdapResultForCurrentUser

	^(System performOnServer:
		'ldapcompare -x -D "cn=admin.orbeon,C=UY" -H ldap://10.255.5.111 "uid=', name,',ou=usuarios,cn=orbeon-test,C=UY" -w orbeon2013  userpassword:', password) trimBlanks