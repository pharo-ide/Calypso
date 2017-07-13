tests
testSubgroupsWhenTwoClassesHasMethodsWithSameCritique

	| actual analyzedClass2 |
	analyzedClass analyzedClassSideSelectors: #(methodWithHalt).
	analyzedClass2 := ClyAnalyzedClassStub new.
	analyzedClass2 analyzedClassSideSelectors: #(methodWithHalt2).
	group classes: { analyzedClass. analyzedClass2 }.
	self analyzeGroupClasses.
	
	actual := group subgroups.
	self assert: actual size equals: 1.
	self assert: actual first class equals: ClyConcreteCritiqueMethodGroup.
	self assert: actual first classes equals: group classes.
	self assert: actual first critic equals: critic.