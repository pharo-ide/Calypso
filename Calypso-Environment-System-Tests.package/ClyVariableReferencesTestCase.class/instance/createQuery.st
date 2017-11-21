running
createQuery
	^self queryClass 
		of: { ClyInstanceVariable named: self targetVarName declaredIn: ClyVariableReferencesTestCase}
		from: (ClyClassScope of: {self class} in: environment)