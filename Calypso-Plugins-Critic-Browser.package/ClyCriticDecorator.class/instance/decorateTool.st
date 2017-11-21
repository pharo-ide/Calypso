decoration
decorateTool
	| critiques dataSource newScope |	
	criticView ifNil: [ self prepare].	
	newScope := browserTool criticAnalysisScope.
	(analysisScope isNil or: [ newScope basisObjects ~= analysisScope basisObjects]) ifTrue: [ 
		analysisScope := newScope.
		critiques := ClyAllCritiquesQuery sortedFrom: analysisScope.
		dataSource := ClyCollapsedDataSource on: critiques.
		criticView dataSource: dataSource].
	
	self refreshCritiques