tests
testInheritedClassesOfClass

	| actual |
	group classes: { Class }.

	actual := group inheritedClasses asArray.
	self assert: (actual includes: TClass).
	self assert: (actual includes: Object).