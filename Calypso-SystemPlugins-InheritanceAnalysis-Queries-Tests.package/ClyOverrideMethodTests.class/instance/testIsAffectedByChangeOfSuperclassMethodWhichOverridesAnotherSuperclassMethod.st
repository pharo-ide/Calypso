tests
testIsAffectedByChangeOfSuperclassMethodWhichOverridesAnotherSuperclassMethod
	"this case is important to be affected when override method was removed"
	
	query := ClyOverrideMethods 
		from: ClyClassScope of: ClyClassWhichInheritsAbstractSubclass in: environment.
		
	self assert: (query isAffectedByChangedMethod: ClyAbstractSubclassExample >> #abstractMethod1)
