running
createQuery
	^ self queryClass
		of: {ClyInstanceVariable
			named: self targetVarName definedIn: ClyVariableReferencesTestCase}
		from: (ClyClassScope of: self class in: environment)