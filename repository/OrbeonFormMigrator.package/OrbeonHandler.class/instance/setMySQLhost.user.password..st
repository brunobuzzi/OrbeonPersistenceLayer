mysql
setMySQLhost: host user: user password: password

	mySqlReader := self defaultMySqlClass new 
			host: host;
			user: user;
			password: password; 
			yourself.

	^self