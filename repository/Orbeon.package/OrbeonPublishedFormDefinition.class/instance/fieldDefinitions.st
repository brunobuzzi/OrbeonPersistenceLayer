Accessing
fieldDefinitions
	"The receiver answer a collection of field definitions. Iterate over embedded sections"
	| sections fields |

	fields := OrderedCollection new.

	sections := self getAllSectionsIn: OrderedCollection new.

	sections do: [:each | fields addAll: (each getAllFieldDefinitions)].

	^fields