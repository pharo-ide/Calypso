testing
hasSubgroups

	self classAndCritiquesDo: [ :class :analysisResult | 
		(analysisResult isComplete and: [ critic doesClassHaveMethodWithCritiques: class])
			ifTrue: [^true]].
	^false