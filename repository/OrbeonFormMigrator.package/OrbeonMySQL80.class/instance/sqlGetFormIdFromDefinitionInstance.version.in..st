instance definition
sqlGetFormIdFromDefinitionInstance: formName version: version in: appName

	^'mysql -h ',self databaseIP,' -u ', self databaseUser,' -p',self databasePassword,' -N -B -e "select document_id from orbeon.orbeon_form_data where app = ''orbeon'' and form=''builder'' and form_version=', version printString, ' and xml like ''%<application-name>', appName, '</application-name>%'' and xml like ''%<form-name>',formName,'</form-name>%'' order by created desc limit 1;" '