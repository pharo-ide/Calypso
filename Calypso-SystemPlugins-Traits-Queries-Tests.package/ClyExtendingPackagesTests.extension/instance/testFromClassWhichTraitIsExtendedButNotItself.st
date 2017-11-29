*Calypso-SystemPlugins-Traits-Queries-Tests
testFromClassWhichTraitIsExtendedButNotItself

	self queryInScope: ClyClassScope of: {ClyClassWithTraits}.

	self assert: resultItems size equals: 0