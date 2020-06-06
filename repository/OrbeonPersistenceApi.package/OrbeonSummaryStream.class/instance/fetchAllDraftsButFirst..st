fetch instances
fetchAllDraftsButFirst: anInteger

	draftsReadStream := ReadStreamPortable on: (summary getAllDrafts allButFirst: anInteger)