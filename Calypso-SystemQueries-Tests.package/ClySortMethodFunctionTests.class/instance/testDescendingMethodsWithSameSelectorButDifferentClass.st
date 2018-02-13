tests
testDescendingMethodsWithSameSelectorButDifferentClass

	function := ClySortMethodFunction descending.
	
	self assert: (function value: Object >> #printString value: Number >> #printString ).
	self deny: (function value: Number >> #printString value: Object >> #printString )