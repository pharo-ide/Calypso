tests
testInheritedClassesOfObject

	| actual |
	group classScope: { Object }.

	actual := group inheritedClasses asArray.
	self assert: actual equals: { ProtoObject }