running
createQuery
	^self queryClass 
		of: { ClyInstanceVariable named: self targetVarName declaredIn: ClyVariableReferencesTestCase}