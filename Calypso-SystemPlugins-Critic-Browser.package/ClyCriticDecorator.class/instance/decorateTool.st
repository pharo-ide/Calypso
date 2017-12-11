decoration
decorateTool
	| newScope |	
	criticView ifNil: [ self prepare].	
	newScope := browserTool criticAnalysisScope.
	(analysisScope isNil or: [ newScope basisObjects ~= analysisScope basisObjects]) ifTrue: [ 
		analysisScope := newScope.
		self updateCriticView].
	
	self refreshCritiques