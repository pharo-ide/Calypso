execution
collectCritiques

	^objectAnalysisResults flatCollect: [ :each |
		each isComplete ifTrue: [ each critiques ] ifFalse: [ #() ] ]