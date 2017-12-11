tests
testCheckIfEmpty
	query scope: (ClyClassScope of: ClyAbstractSubclassExample in: environment).
	self deny: query checkEmptyResult.	"it has unimplemented #abstractMethod2"

	query scope: (ClyClassScope of: ClyAbstractClassExample in: environment).
	self assert: query checkEmptyResult