testing
representsScope: aScopeClass
	^(super representsScope: aScopeClass)
		or: [ relationScopeClasses anySatisfy: [ :each | each includesBehavior: aScopeClass ] ]