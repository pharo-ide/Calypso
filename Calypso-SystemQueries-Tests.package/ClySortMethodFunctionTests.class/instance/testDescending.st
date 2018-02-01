tests
testDescending

	function := ClySortMethodFunction descending.
	
	self assert: (function value: Object >> #size value: Object >> #printString ).
	self deny: (function value: Object >> #printString value: Object >> #size ).
	self assert: (function value: Object >> #printString value: Object >> #printString )