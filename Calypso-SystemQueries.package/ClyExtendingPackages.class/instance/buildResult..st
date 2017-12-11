execution
buildResult: aQueryResult
	| packages classPackage |
	packages := IdentitySet new.
	
	scope methodsDo: [ :eachMethod | 
		classPackage := eachMethod origin package.
		(eachMethod isDefinedInPackage: classPackage) ifFalse: [ 
			eachMethod package ifNotNil: [ :p | packages add: p]]].
		
	aQueryResult fillWith: packages