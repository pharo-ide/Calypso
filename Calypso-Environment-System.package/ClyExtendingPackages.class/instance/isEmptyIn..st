execution
isEmptyIn: aNavigationEnvironment
	
	| classPackage |
	scope methodsDo: [ :eachMethod | 
		classPackage := eachMethod origin package.
		(eachMethod isDefinedInPackage: classPackage) ifFalse: [ 
			eachMethod package ifNotNil: [ :p | ^false]]].
		
	^true