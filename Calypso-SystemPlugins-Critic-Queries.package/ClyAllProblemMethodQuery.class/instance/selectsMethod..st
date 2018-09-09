testing
selectsMethod: aMethod
	| critiques |
	critiques := self loadCritiquesAsync.
	
	^critiques items 
		anySatisfy: [ :each | each sourceAnchor entity == aMethod ]