*Calypso-SystemPlugins-Traits-Queries-Tests
testFromClassWhichTraitIsExtendedButNotItself

	self queryFromScope: ClyClassScope of: ClyClassWithTraits.

	self assert: resultItems size equals: 0