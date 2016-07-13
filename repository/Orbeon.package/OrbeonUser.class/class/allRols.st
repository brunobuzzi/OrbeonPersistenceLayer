other
allRols

	^(self cache inject: OrderedCollection new into: [:all :each | all addAll: each rols. all]) asSet asSortedCollection