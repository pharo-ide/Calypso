merging queries
mergeOwnInstances: queries
	
	| allSubqueries |
	allSubqueries := queries flatCollect: [ :each | each subqueries ].
	^self merge: allSubqueries