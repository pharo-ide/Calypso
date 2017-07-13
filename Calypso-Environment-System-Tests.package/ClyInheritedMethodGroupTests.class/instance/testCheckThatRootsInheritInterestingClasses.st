tests
testCheckThatRootsInheritInterestingClasses

	group classes: { Object }.
	self assert: group isRootsInheritInterestingClasses.

	group classes: { ClyClass1FromP1 }.
	self deny: group isRootsInheritInterestingClasses.

	group classes: { ClySubclassN1OfClass1FromP1 }.
	self assert: group isRootsInheritInterestingClasses.

	group classes: { ClyTraitChild1  }.
	self deny: group isRootsInheritInterestingClasses