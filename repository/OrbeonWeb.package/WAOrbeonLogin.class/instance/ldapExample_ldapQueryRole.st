ldap_example
ldapExample_ldapQueryRole

	^System performOnServer:
		'ldapsearch -x -D "cn=admin.orbeon,C=UY" -H ldap://10.255.5.111 -b "ou=tomcatroles,cn=orbeon-test,C=UY" "uniquemember=uid=', name,',ou=usuarios,cn=orbeon-test,C=UY" -w orbeon2013 '