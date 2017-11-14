tests
testMethodVisibilityCheckWhenTraitSelectedAsSuperclass

	group superclass: ClyTraitChild1.
	
	group classScope: { ClySubclassWithTraitsOfClassWithTraits }.	
	self deny: group isMethodsVisible.

	group classScope: { ClySubclassWithTraitsOfClassWithTraits. ClyTraitChild1 }.
	self assert: group isMethodsVisible