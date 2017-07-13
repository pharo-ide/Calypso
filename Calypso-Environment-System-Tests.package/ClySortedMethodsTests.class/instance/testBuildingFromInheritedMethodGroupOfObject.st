tests-inherited methods
testBuildingFromInheritedMethodGroupOfObject
	| group |
	group := ClyInheritedMethodGroup classes: {Object}.
		
	self retrieveFromGroup: group.

 	self assert: actualObjects notEmpty