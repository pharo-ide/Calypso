building
buildParentMap: aHierarchyMap for: aClass

	| eachClass superclass |
	eachClass := aClass.
	[eachClass isRootInEnvironment] whileFalse: [ 
		superclass := eachClass superclass.	
		(aHierarchyMap includesClass: superclass) ifTrue: [
			^aHierarchyMap addParent: superclass to: aClass].
		eachClass := superclass]