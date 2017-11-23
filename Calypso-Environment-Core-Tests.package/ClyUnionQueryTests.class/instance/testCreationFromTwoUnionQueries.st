tests
testCreationFromTwoUnionQueries

	| subquery1 subquery2 subquery3 subquery4 unionQuery1 unionQuery2 scopes |
	subquery1 := self subqueryInScope: ClyScopeExample of: {Array}.
	subquery2 := self subqueryInScope: ClyScopeExample2 of: {String}.
	subquery3 := self subqueryInScope: ClyScopeExample of: {Object}.
	subquery4 := self subqueryInScope: ClyScopeExample2 of: {Class}.
	
	unionQuery1 := subquery1, subquery2.
	unionQuery2 := subquery3, subquery4.
	
	query := unionQuery1 , unionQuery2.
	self assert: query class equals: self queryClass.
	self assert: query subqueries size equals: 2.
	self assert: (query subqueries collect: #class as: Set) equals: {subquery1 class} asSet.
	scopes := query subqueries collect: #scope as: Array.
	self assert: scopes equals: {
		ClyScopeExample of: {Array. Object}. ClyScopeExample2 of: {String. Class}
	}.
	self assert: query requiredResult == subquery1 requiredResult