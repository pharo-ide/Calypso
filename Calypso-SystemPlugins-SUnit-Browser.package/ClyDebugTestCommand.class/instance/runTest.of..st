execution
runTest: testSelector of: testClass

	| breakpoint |
	breakpoint := Breakpoint new
		node: (testClass lookupSelector: testSelector) ast;
		install.
	[super runTest: testSelector of: testClass] ensure: [ breakpoint remove ]