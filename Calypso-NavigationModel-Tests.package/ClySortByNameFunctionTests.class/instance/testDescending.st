tests
testDescending

	function := ClySortByNameFunction descending.
	
	self assert: (function value: Object value: Array ).
	self deny: (function value: Array value: Object ).
	self assert: (function value: Object value: Object )