tests
testNotSelectsMethodWithoutCritiques

	analyzedClass analyzedClassSideSelectors: #(methodWithoutCritiques).

	self executeQuery.
	
	self deny: (query selectsMethod: analyzedClass localMethods first)