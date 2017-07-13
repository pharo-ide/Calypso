decoration
decorateTool
	| cursor dataSource newScope |	
	criticView ifNil: [ self prepare].	
	newScope := browserTool criticAnalysisScope.
	(analysisScope isNil or: [ newScope basisObjects ~= analysisScope basisObjects]) ifTrue: [ 
		analysisScope := newScope.
		cursor := self browserEnvironment query: ClySortedCritiques inScope: analysisScope.
		dataSource := ClyCollapsedDataSource on: cursor.
		criticView dataSource: dataSource].
	
	self refreshCritiques