tests
testMethodVisibilityCheck

	group classes: { ClyClassWithTraits }.
	self deny: group isMethodsVisible.

	group classes: { ClyClassWithTraits. ClyTraitChild1 }.
	self assert: group isMethodsVisible