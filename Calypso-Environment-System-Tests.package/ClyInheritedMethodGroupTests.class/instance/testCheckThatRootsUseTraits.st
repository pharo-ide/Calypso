tests
testCheckThatRootsUseTraits

	group classScope: { Object }.
	self deny: group isRootsUseTraits.

	group classScope: { ClyClassWithTraits }.
	self assert: group isRootsUseTraits