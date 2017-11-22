queries
showQueries: queries as: aQueryResult

	| fullQuery |
	fullQuery := ClyCompositeQuery with: queries as: aQueryResult.
	
	self showQuery: fullQuery