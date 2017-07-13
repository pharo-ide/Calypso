tests
testMethodVisibilityCheck

	group superclass: Object.
	
	group classes: { ClyClassWithTraits }.	
	self deny: group isMethodsVisible.

	group classes: { ClyClassWithTraits. Object }.
	self assert: group isMethodsVisible