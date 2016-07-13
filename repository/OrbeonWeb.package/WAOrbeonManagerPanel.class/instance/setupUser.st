commands
setupUser

	selectedToolBarOption := 'manage-users'.
	arena ifNotNil: [arena answer: true].
	arena := OrbeonUserWebManagerPanel collection: OrderedCollection new.
	arena mainPanel: self.
	arena onAnswer: [:answer | arena := nil].