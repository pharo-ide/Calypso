execution
checkEmptyResult
	^ subqueries allSatisfy: [ :each | each checkEmptyResult ]