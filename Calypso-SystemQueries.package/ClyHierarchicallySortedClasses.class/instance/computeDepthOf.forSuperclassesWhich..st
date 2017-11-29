private
computeDepthOf: aClass forSuperclassesWhich: aBlock
	| resultDepth superclass eachClass |
	resultDepth := 0.
	eachClass := aClass.
	[eachClass isRootInEnvironment] whileFalse: [ 
		superclass := eachClass superclass.
		(aBlock value: superclass) ifTrue: [ resultDepth := resultDepth + 1].
		eachClass := superclass].
			
	^resultDepth