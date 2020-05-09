other
getAllSelectedFields

	^selectedFields inject: OrderedCollection new into: [:all :eachCollection | all addAll: eachCollection. all]