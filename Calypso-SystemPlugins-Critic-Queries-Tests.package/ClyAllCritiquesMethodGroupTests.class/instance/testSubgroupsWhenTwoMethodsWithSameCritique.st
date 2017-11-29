tests
testSubgroupsWhenTwoMethodsWithSameCritique

	| actual |
	analyzedClass analyzedClassSideSelectors: #(methodWithHalt methodWithHalt2).
	self analyzeGroupClasses.
	
	actual := group subgroups.
	self assert: actual size equals: 1.
	self assert: actual first class equals: ClyConcreteCritiqueMethodGroup.
	self assert: actual first classes equals: group classes.
	self assert: actual first critic equals: critic.