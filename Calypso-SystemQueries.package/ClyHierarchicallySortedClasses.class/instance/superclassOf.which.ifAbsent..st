private
superclassOf: aClass which: aBlock ifAbsent: absentBlock

	| superclass eachClass |
	eachClass := aClass.
	[eachClass isRootInEnvironment] whileFalse: [ 
		superclass := eachClass superclass.	
		(aBlock value: superclass) ifTrue: [^superclass].
		eachClass := superclass].
		
	^absentBlock value