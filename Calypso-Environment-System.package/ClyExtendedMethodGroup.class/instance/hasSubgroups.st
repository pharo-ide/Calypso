testing
hasSubgroups
	| classPackage |
	^classScope anySatisfy: [ :eachClass | 
		classPackage := eachClass package.
		eachClass localMethods anySatisfy: [:eachMethod | 
			(eachMethod isDefinedInPackage: classPackage) not]]