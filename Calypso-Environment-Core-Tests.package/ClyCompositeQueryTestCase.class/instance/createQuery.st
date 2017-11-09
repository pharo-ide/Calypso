running
createQuery
	^ClyCompositeQuery with: { 
		self subqueryInScopeOf:  { self class }.
		self subqueryInScopeOf:  { self class superclass }}