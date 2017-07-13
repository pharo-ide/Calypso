tests
testMeaningfullSuperclassesOfObject

	| actual |
	group classes: { Object }.
	
	actual := group meaningfullInheritedClasses asArray.
	self assert: actual equals: { ProtoObject }