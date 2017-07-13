testing
hasSubgroups
	| classPackage |
	^classes anySatisfy: [ :eachClass | 
		classPackage := eachClass package.
		eachClass localMethods anySatisfy: [:eachMethod | 
			(eachMethod isDefinedInPackage: classPackage) not]]