tests
testAscending

	function := ClySortByDefiningClassFunction ascend.
	
	self deny: (function value: (ClyClassComment of: Object) value: (ClyClassComment of: Array)).
	self assert: (function value: (ClyClassComment of: Array) value: (ClyClassComment of: Object)).
	self assert: (function value: (ClyClassComment of: Object) value: (ClyClassComment of: Object))