building
buildParentMap: aHierarchyMap for: aClass
	| allParents eachParent |
	allParents := IdentitySet withAll: aClass traits.  		
	[allParents isEmpty] whileFalse: [
		eachParent := allParents anyOne.
		allParents remove: eachParent.
		(aHierarchyMap includesClass: eachParent) 
			ifTrue: [aHierarchyMap addParent: eachParent to: aClass]
			ifFalse: [ allParents addAll: eachParent traits].
	]