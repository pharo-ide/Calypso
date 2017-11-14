accessing
methods
	
	| classPackage |
	^classScope flatCollect: [ :eachClass | 
		classPackage := eachClass package.
		eachClass localMethods reject: [ :each | each isDefinedInPackage: classPackage ]]