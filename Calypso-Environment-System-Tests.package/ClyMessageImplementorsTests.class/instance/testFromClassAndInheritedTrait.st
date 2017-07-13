tests
testFromClassAndInheritedTrait
	| allMethods |
	query := ClyMessageImplementors of: #(methodFromRoot1).
	allMethods := self executeQueryInScope: ClyLocalClassScope of: { ClyClassWithTraits. ClyTraitRoot1 }.
	
	self assert: allMethods size equals: 1.
	self assert: allMethods first == (ClyTraitRoot1 >> #methodFromRoot1)