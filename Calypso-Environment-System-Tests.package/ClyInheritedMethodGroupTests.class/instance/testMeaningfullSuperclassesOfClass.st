tests
testMeaningfullSuperclassesOfClass

	| actual |
	group classScope: { Class }.

	actual := group meaningfullInheritedClasses asArray.
	self assert: actual isEmpty