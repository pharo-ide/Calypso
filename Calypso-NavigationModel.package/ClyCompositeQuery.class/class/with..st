instance creation
with: subqueries
	subqueries ifEmpty: [ ^ClyUnknownQuery instance ].
	
	^self new 
		subqueries: subqueries