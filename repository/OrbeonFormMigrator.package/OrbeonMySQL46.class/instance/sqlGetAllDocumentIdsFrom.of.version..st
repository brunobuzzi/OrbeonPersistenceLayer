instance
sqlGetAllDocumentIdsFrom: form of: app version: version
	"Answer all document_id of the form in <orbeon_form_data> for the form <form> in the application <app> with version <version>"

	^'mysql -h ',self databaseIP,' -u ', self databaseUser,' -p',self databasePassword,' -N -B -e "select  document_id  from orbeon.orbeon_form_data where xml is not null and app = ''', app, ''' and form =''', form, ''' and form_version = ', version printString, ' " '