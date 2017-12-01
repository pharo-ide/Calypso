decoration
decorateTool
	| critiques newScope |	
	criticView ifNil: [ self prepare].	
	newScope := browserTool criticAnalysisScope.
	(analysisScope isNil or: [ newScope basisObjects ~= analysisScope basisObjects]) ifTrue: [ 
		analysisScope := newScope.
		critiques := ClyAllBasisCritiques from: analysisScope.
		criticView showQuery: critiques async].
	
	self refreshCritiques