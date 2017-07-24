testing
hasSubgroups
	| fullAnalysisComplete hasSubgroups |
	fullAnalysisComplete := true.
	hasSubgroups := false.
	self classAndCritiquesDo: [ :class :analysisResult | 
		fullAnalysisComplete := fullAnalysisComplete & analysisResult isComplete.
		fullAnalysisComplete ifFalse: [ ^false ].
		hasSubgroups := hasSubgroups or: [critic doesClassHaveMethodWithCritiques: class]].
	classAnalysisResults := nil. "now we reset strong reference to critiques. So they can be garbage collected if not used"
	^hasSubgroups