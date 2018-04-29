tests
testCompareTwoMethods

	function := ClyHeterogeneousSortFunction ascending.
	
	self deny: (function value: Object >> #size value: Object >> #printString ).
	self assert: (function value: Object >> #printString value: Object >> #size ).
	self assert: (function value: Object >> #printString value: Object >> #printString )