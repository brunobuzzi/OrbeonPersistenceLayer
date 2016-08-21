other
create2: integer formsBasedOn: definition in: application randomMethod: randomMethod

	1 to: integer do: [:index |
				(OrbeonFormInstance newFor: definition withId: UUID new asString)
					definition: definition;
					xmlString: (OrbeonFormInstanceTemplate perform: randomMethod);
					processXML;
					yourself.
				System commit.
	].