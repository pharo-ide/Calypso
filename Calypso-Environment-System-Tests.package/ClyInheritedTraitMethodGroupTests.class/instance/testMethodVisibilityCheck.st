tests
testMethodVisibilityCheck

	group classScope: { ClyClassWithTraits }.
	self deny: group isMethodsVisible.

	group classScope: { ClyClassWithTraits. ClyTraitChild1 }.
	self assert: group isMethodsVisible