fetch
fetchAllDraftsButFirst: anInteger

	draftsReadStream := ReadStreamPortable on: (summary getAllDrafts allButFirst: anInteger)