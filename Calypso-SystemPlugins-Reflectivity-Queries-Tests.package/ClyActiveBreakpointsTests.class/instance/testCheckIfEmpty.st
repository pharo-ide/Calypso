tests
testCheckIfEmpty
	Breakpoint new
		node: (ClyClassWithBreakMethods >> #breakMethod) ast;
		always;
		install.
	query
		scope:
			(ClyMethodScope
				ofAll: {(ClyClassWithHaltMethods >> #haltMethod1)}
				in: environment).
	self deny: query checkEmptyResult.
	query
		scope:
			(ClyMethodScope
				ofAll: {(ClyClassWithBreakMethods >> #breakMethod)}
				in: environment).
	self deny: query checkEmptyResult.
	query
		scope:
			(ClyMethodScope
				ofAll: {(ClyClassWithBreakMethods >> #notBreakMethod)}
				in: environment).
	self assert: query checkEmptyResult