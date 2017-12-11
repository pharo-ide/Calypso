tests
testAscending

	function := ClySortItemGroupFunction ascend.
 
	self assert: (function 
		value: (ClyItemGroup named: 'group1' priority: 20) 
		value: (ClyItemGroup named: 'group2' priority: 10) ).
	self deny: (function 
		value: (ClyItemGroup named: 'group1' priority: 10) 
		value: (ClyItemGroup named: 'group2' priority: 20)).	
	self deny: (function 
		value: (ClyItemGroup named: 'group2') value: (ClyItemGroup named: 'group1') ).
	self assert: (function 
		value: (ClyItemGroup named: 'group1') value: (ClyItemGroup named: 'group2'))