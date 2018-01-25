accessing
extendClassScopeForMethods: aClassScope
	| resultScope |
	resultScope := aClassScope.
	
	ClyMethodVisibilityLevel allSubclassesDo: [ :each | 
		(each isDefault and: (each canBeAppliedForClasses: self classSelection items))
			ifTrue: [resultScope := each extendClassScope: resultScope ]].
	
	^resultScope