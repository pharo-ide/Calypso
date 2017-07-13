tests
testMeaningfullSuperclassesOfClass

	| actual |
	group classes: { Class }.

	actual := group meaningfullInheritedClasses asArray.
	self assert: actual isEmpty