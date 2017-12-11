queries
showQueries: queries as: aQueryResult

	| fullQuery |
	fullQuery := ClyQuery unionFrom: queries as: aQueryResult.
	
	self showQuery: fullQuery