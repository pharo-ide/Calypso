testing
isEmpty

	self classAndCritiquesDo: [ :class :analysisResult |
		analysisResult isComplete ifFalse: [ ^false ].
		(critic doesClassHaveMethodWithCritiques: classes first) ifTrue: [^false]].
	
	^true