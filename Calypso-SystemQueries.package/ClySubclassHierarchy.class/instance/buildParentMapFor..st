building
buildParentMapFor: aClass

	| eachClass superclass |
	eachClass := aClass.
	[eachClass isRootInEnvironment] whileFalse: [ 
		superclass := eachClass superclass.	
		(classes includes: superclass) ifTrue: [
			^parentMap addParent: superclass to: aClass].
		eachClass := superclass].
	
	roots add: aClass