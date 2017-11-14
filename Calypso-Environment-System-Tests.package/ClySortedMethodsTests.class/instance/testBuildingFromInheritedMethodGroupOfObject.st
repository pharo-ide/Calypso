tests-inherited methods
testBuildingFromInheritedMethodGroupOfObject
	| group |
	group := ClyInheritedMethodGroup classScope: {Object}.
		
	self retrieveFromGroup: group.

 	self assert: actualObjects notEmpty