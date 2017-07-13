tests-inherited methods
testBuildingFromInheritedMethodGroupOfObjectMetaclass
	| group |
	group := ClyInheritedMethodGroup classes: {Object class}.
		
	self retrieveFromGroup: group.

 	self assert: actualObjects notEmpty.
	self deny: (actualObjects includesAnyOf: Object methodDict)