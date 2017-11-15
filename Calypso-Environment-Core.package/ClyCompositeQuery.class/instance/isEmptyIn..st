execution
isEmptyIn: aNavigationEnvironment
	^subqueries allSatisfy: [ :each | each isEmptyIn: aNavigationEnvironment]