tests
testCompareClassesAndMethods

	function := ClyHeterogeneousSortFunction ascending.
	
	self deny: (function value: Object value: Object >> #printString ).
	self assert: (function value: Object >> #printString value: Object )