tests
testAscendingMethodsWithSameSelectorButDifferentClass

	function := ClySortMethodFunction ascending.
	
	self deny: (function value: Object >> #printString value: Number >> #printString ).
	self assert: (function value: Number >> #printString value: Object >> #printString )