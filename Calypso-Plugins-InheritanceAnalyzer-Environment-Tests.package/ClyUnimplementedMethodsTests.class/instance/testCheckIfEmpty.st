tests
testCheckIfEmpty
	query scope: (ClyClassScope of: {ClyAbstractSubclassExample}).
	self deny: query checkEmptyResult.	"it has unimplemented #abstractMethod2"
		
	query scope: (ClyClassScope of: {ClyAbstractClassExample}).
	self assert: query checkEmptyResult