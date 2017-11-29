tests
testFromSingleClass

	self executeQuery.
	
	self assert: foundSelectors equals: #(abstractMethod2 abstractSubclassMethod)
