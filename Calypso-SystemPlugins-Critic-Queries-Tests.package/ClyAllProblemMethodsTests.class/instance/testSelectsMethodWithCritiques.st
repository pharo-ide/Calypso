tests
testSelectsMethodWithCritiques

	analyzedClass analyzedClassSideSelectors: #(methodWithHalt).
	
	self executeQuery.
	
	self assert: (query selectsMethod: analyzedClass localMethods first)