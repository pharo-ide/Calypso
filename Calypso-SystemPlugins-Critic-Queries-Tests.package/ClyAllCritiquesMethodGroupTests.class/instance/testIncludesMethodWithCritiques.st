tests
testIncludesMethodWithCritiques

	analyzedClass analyzedClassSideSelectors: #(methodWithHalt).
	self analyzeGroupClasses.
	self prepareGroupForMethodsCollection.
	
	self assert: (group includesMethod: analyzedClass localMethods first)