ldapIP 				- 10.255.5.111
dn 					- "cn=admin.orbeon,C=UY"
ou					- "uid=username ou=usuarios,cn=orbeon-test,C=UY"
bindPassword	- myPassword


	^(System performOnServer:
		'ldapcompare -x -D "cn=admin.orbeon,C=UY" -H ldap://10.255.5.111 "uid=', name,',ou=usuarios,cn=orbeon-test,C=UY" -w orbeon1999  userpassword:', password) trimBlanks