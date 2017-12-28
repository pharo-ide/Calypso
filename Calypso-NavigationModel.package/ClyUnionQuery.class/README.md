I am a union of subqueries.
I execute all subqueries and merge result items into single result instance.

My subqueries must be a kind of ClyTypedQuery. And I implement union logic to ensure this invariant.
During instance creation I try unify all subqueries. And in some cases the result query can be single type query instead of my instance.
For example:

	ClyUnionQuery with: { 
		ClyMessageSenders of: #(do:) from: (ClyClassScope of: Object in: environment). 
		ClyMessageSenders of: #(do:) from: (ClyClassScope of: String in: environment). 
	} 

It will return single senders query: 

	ClyMessageSenders of: #(do:) from: (ClyClassScope ofAll: {Object. String} in: environment).

But in general case the result union query will be return with subset of given queries with merged scope.

General query concatination using comma message produced my instances. Previous example can be rewritten as: 

	(ClyMessageSenders of: #(do:) from: (ClyClassScope of: Object in: environment))
		, (ClyMessageSenders of: #(do:) from: (ClyClassScope of: String in: environment))

