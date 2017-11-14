tests
testMeaningfullSuperclassesOfObject

	| actual |
	group classScope: { Object }.
	
	actual := group meaningfullInheritedClasses asArray.
	self assert: actual equals: { ProtoObject }