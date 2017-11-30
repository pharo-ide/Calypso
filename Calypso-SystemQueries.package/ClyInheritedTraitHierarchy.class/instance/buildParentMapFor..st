building
buildParentMapFor: aClass

	| allParents eachParent |
	allParents := IdentitySet withAll: aClass traits.  
	allParents ifEmpty: [ ^roots add: aClass ].
	
	[allParents isEmpty] whileFalse: [
		eachParent := allParents anyOne.
		allParents remove: eachParent.
		(classes includes: eachParent) 
			ifTrue: [parentMap addParent: eachParent to: aClass]
			ifFalse: [ allParents addAll: eachParent traits].
	]