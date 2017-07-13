tests
testMethods
	| selectors |
	Breakpoint new node: (ClyClassWithBreakMethods >> #breakMethod) ast; always; install.
	group classes: { ClyClassWithHaltMethods. ClyClassWithBreakMethods }.	

	selectors := (group methods collect: #selector) sorted.
	
	self assert: selectors equals: #(#breakMethod haltMethod1 haltMethod2)