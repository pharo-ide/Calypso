tests
testFromClassWhichTraitIsExtendedButNotItself

	self queryInScope: ClyClassScope of: {ClyClassWithTraits}.

	self assert: resultItems size equals: 0