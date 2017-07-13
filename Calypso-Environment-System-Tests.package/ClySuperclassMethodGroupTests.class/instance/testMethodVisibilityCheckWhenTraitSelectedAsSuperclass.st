tests
testMethodVisibilityCheckWhenTraitSelectedAsSuperclass

	group superclass: ClyTraitChild1.
	
	group classes: { ClySubclassWithTraitsOfClassWithTraits }.	
	self deny: group isMethodsVisible.

	group classes: { ClySubclassWithTraitsOfClassWithTraits. ClyTraitChild1 }.
	self assert: group isMethodsVisible