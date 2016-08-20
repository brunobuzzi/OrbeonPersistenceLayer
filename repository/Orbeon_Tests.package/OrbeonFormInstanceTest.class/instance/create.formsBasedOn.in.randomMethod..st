other
create: integer formsBasedOn: definition in: application randomMethod: randomMethod
	| formInstances |

	formInstances := Set new.

	1 to: integer do: [:index |
				formInstances add: ((OrbeonFormInstance newFor: definition withId: UUID new asString)
													definition: definition;
													xmlString: (OrbeonFormInstanceTemplate perform: randomMethod);
													processXML;
													yourself).].
	^formInstances