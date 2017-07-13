tests
testCheckThatRootsUseTraits

	group classes: { Object }.
	self deny: group isRootsUseTraits.

	group classes: { ClyClassWithTraits }.
	self assert: group isRootsUseTraits