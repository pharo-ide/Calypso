converting
withResult: aQueryResult
	
	| newQuery |
	newQuery := super withResult: aQueryResult.
	newQuery subqueries: (subqueries collect: [ :each | each withResult: aQueryResult ]).
	^newQuery