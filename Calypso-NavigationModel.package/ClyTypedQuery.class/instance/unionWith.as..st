composition
unionWith: typedQueries as: aQueryResult

	^ClyQuery unionFrom: (typedQueries copyWith: self) as: aQueryResult 