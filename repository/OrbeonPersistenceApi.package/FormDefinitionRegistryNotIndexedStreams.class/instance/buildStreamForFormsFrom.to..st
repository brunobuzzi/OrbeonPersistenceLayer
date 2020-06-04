streams set
buildStreamForFormsFrom: startIndex to: endIndex
	| realEndIndex instancesCollection |

	instancesCollection := (formDefinitionRegistry instancesSetOfVersion: version) asSortedCollection: [:a :b | b modifiedTime <= a modifiedTime].
	realEndIndex := (instancesCollection size >= endIndex) 
							ifTrue: [endIndex] 
							ifFalse: [instancesCollection size]. 

	numberOfForms := numberOfForms + instancesCollection size.
	instancesReadStream := ReadStreamPortable on: (instancesCollection copyFrom: startIndex to: realEndIndex).