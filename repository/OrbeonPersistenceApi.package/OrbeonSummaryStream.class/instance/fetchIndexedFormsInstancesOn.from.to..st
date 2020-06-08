fetch instances
fetchIndexedFormsInstancesOn: indexedCollection from: startIndex to: endIndex
	"This implementation has to be reimplemented because is very unperformant"
	| gsQuery btreePlusReadStream currentIndex resultCollection |

	gsQuery := GsQuery fromString: 'each.modifiedTime >= timeNow'.
	gsQuery bind: 'timeNow' to: TimeStamp now.
	gsQuery on: indexedCollection.
	btreePlusReadStream := gsQuery readStream.

	currentIndex := 0.
	resultCollection := OrderedCollection new.
	[btreePlusReadStream atEnd not and:[currentIndex <= endIndex]] whileTrue: [ | form |
		form := btreePlusReadStream next.
		(summary selectFormsInstancesWithPermissionsFrom: (OrderedCollection with:form)) 
		ifNotEmpty: [:col | resultCollection addAll: col. currentIndex := currentIndex + 1]
	].

	instancesReadStream := ReadStreamPortable on: resultCollection