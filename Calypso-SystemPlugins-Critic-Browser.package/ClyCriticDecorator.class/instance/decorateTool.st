decoration
decorateTool
	| critiques newScope |	
	criticView ifNil: [ self prepare].	
	newScope := browserTool criticAnalysisScope.
	(analysisScope isNil or: [ newScope basisObjects ~= analysisScope basisObjects]) ifTrue: [ 
		analysisScope := newScope.
		critiques := ClyAllCritiques from: analysisScope.
		criticView showQuery: critiques async].
	
	self refreshCritiques