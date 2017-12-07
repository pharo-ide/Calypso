tests
testCheckIfEmpty
	query
		scope: (ClyClassScope ofAll: {ClyAbstractSubclassExample} in: environment).
	self deny: query checkEmptyResult.	"it has unimplemented #abstractMethod2"
	query
		scope: (ClyClassScope ofAll: {ClyAbstractClassExample} in: environment).
	self assert: query checkEmptyResult