other
testMigrateFormWithFiles
	"To allow MySQL to export files execute:
		sudo chown -R mysql:mysql /home/gemstone/orbeon-files/
		sudo chcon -Rv --type=tmp_t /home/gemstone/orbeon-files"

	migrator updateFormDefinitionNamed: 'all-fields-types' app: 'migration' version: '1' from: '2020-01-01 00:00'