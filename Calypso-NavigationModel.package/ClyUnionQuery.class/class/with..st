instance creation
with: subqueries
	| mergedQueries |
	subqueries ifEmpty: [ ^ClyUnknownQuery instance ].
	
	mergedQueries := self merge: subqueries.
	mergedQueries size = 1 ifTrue: [ ^mergedQueries anyOne copy].
	
	^(super with: mergedQueries)
		requiredResult: subqueries anyOne requiredResult