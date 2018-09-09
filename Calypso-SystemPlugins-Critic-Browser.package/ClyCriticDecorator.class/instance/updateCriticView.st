controlling
updateCriticView
	
	| critiqueQuery |
	
	critiqueQuery := (ClyAllBasisCritiqueQuery from: analysisScope) async.
	criticView showQuery: critiqueQuery