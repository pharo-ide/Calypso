composition
unionWith: typedQueries as: aQueryResult

	^ClyQuery unionFrom: (typedQueries , subqueries) as: aQueryResult