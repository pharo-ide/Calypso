execution
execute
	| testCase |
	testCase := (selectedClassItem getProperty: ClyTestedClassProperty) coveringTestCase.
	
	browser spawnBrowser: ClyFullBrowser withState: [ :b |
		b selectClass: testCase]