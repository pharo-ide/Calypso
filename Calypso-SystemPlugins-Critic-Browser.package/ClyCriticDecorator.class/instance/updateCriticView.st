controlling
updateCriticView
	
	| critiqueQuery |
	
	critiqueQuery := (ClyAllBasisCritiques from: analysisScope) async.
	criticView showQuery: critiqueQuery