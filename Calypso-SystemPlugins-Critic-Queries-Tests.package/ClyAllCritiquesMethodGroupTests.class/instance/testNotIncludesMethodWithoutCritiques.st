tests
testNotIncludesMethodWithoutCritiques

	analyzedClass analyzedClassSideSelectors: #(methodWithoutCritiques).
	self analyzeGroupClasses.
	self prepareGroupForMethodsCollection.
	
	self deny: (group includesMethod: analyzedClass localMethods first)