instance
selectAllVersionOf: formNamed in: appName
	"Answer a SQL sentence with all versions of the form definition named <formNamed> in application <appName>"

	^'mysql -h ',self databaseIP,' -u ', self databaseUser,' -p',self databasePassword,' -N -B -e "select form_version from orbeon.orbeon_form_definition where app = ''', appName, ''' and form = ''', formNamed, ''' group by form_version " '