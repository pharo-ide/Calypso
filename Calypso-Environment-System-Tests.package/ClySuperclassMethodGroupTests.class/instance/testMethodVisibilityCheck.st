tests
testMethodVisibilityCheck

	group superclass: Object.
	
	group classScope: { ClyClassWithTraits }.	
	self deny: group isMethodsVisible.

	group classScope: { ClyClassWithTraits. Object }.
	self assert: group isMethodsVisible