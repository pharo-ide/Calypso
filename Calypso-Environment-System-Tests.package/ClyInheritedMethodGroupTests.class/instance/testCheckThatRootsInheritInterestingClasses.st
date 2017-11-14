tests
testCheckThatRootsInheritInterestingClasses

	group classScope: { Object }.
	self assert: group isRootsInheritInterestingClasses.

	group classScope: { ClyClass1FromP1 }.
	self deny: group isRootsInheritInterestingClasses.

	group classScope: { ClySubclassN1OfClass1FromP1 }.
	self assert: group isRootsInheritInterestingClasses.

	group classScope: { ClyTraitChild1  }.
	self deny: group isRootsInheritInterestingClasses