tests
testFromClassAndInheritedTrait
	
	query := ClyMessageImplementors of: #(methodFromRoot1).
	self queryInScope: ClyBothMetaLevelClassScope of: { ClyClassWithTraits. ClyTraitRoot1 }.
	
	self assert: resultItems size equals: 1.
	self assert: resultItems first == (ClyTraitRoot1 >> #methodFromRoot1)