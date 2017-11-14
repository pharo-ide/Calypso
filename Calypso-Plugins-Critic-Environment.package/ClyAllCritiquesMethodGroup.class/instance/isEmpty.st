testing
isEmpty

	self classAndCritiquesDo: [ :class :analysisResult |
		analysisResult isComplete ifFalse: [ ^false ].
		(critic doesClassHaveMethodWithCritiques: class) ifTrue: [
			classAnalysisResults := nil. "now we reset strong reference to critiques. So they can be garbage collected if not used"
			^false]].

	classAnalysisResults := nil. "now we reset strong reference to critiques. So they can be garbage collected if not used"
	^true