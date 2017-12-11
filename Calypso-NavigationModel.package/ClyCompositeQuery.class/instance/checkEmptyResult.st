execution
checkEmptyResult
	^ subqueries allSatisfy: [ :each | each hasEmptyResult ]