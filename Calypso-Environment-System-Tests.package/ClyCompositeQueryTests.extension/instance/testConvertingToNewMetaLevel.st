*Calypso-Environment-System-Tests
testConvertingToNewMetaLevel

	| newQuery |
	query subqueries: { 
		ClyAllMethodGroups from: ClyClassScope of: {Object} in: environment.
		ClyAllMethodGroups from: ClySubclassScope of: {Array} in: environment.
	}.
	newQuery := query withMetaLevelScope: ClyInstanceSideScope.
	
	self assert: newQuery class equals: ClyCompositeQuery.
	self assert: (newQuery subqueries collect: #class) equals: (query subqueries collect: #class).
	self assert: newQuery requiredResult == query requiredResult.
	self assert: newQuery subqueries first scope class equals: ClyInstanceSideScope.
	self assert: newQuery subqueries last scope class equals: ClySubclassScope.
	self assert: newQuery subqueries last scope metaLevelScope equals: ClyInstanceSideScope.