instance creation
with: subqueries
	| mergedQueries |
	mergedQueries := self merge: subqueries.
	mergedQueries size = 1 ifTrue: [ ^mergedQueries first copy].
	
	^(super with: mergedQueries)
		requiredResult: subqueries first requiredResult