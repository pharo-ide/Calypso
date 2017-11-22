decoration
decorateTool
	| critiques newScope |	
	criticView ifNil: [ self prepare].	
	newScope := browserTool criticAnalysisScope.
	(analysisScope isNil or: [ newScope basisObjects ~= analysisScope basisObjects]) ifTrue: [ 
		analysisScope := newScope.
		critiques := ClyAllCritiquesQuery sortedFrom: analysisScope.
		criticView showQuery: critiques].
	
	self refreshCritiques