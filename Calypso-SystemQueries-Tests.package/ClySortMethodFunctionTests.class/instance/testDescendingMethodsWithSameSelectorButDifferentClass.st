tests
testDescendingMethodsWithSameSelectorButDifferentClass

	function := ClySortMethodFunction descend.
	
	self assert: (function value: Object >> #printString value: Number >> #printString ).
	self deny: (function value: Number >> #printString value: Object >> #printString )