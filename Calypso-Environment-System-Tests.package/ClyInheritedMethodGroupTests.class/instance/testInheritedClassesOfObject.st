tests
testInheritedClassesOfObject

	| actual |
	group classes: { Object }.

	actual := group inheritedClasses asArray.
	self assert: actual equals: { ProtoObject }