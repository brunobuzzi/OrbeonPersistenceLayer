ldap_example
ldapExample_getLdapRols
	| str ldapResult rols |

	rols := OrderedCollection new.	
	str := self ldapExample_ldapQueryRole.

	ldapResult := (str subStrings: $#) select: [:e | ((e includesSubString: 'uniquemember')  or:[e includesSubString: 'uniqueMember']) and: [e includesSubString: 'cn:']].	
			
	ldapResult do: [:eachLdap | (eachLdap subStrings: Character lf) do: [:each | (each includesSubString: 'cn:') ifTrue:[rols add: each]]].

	^rols collect: [:each | (each subStrings: $:) last trimBlanks]