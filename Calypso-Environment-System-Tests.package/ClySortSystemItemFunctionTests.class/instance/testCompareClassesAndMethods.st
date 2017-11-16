tests
testCompareClassesAndMethods

	function := ClySortSystemItemFunction ascend.
	
	self deny: (function value: Object value: Object >> #printString ).
	self assert: (function value: Object >> #printString value: Object )