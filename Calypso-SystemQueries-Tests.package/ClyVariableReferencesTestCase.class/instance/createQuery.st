running
createQuery
	^ self queryClass
		of:
			{(ClyInstanceVariable
				named: self targetVarName
				definedIn: ClyVariableReferencesTestCase)}
		from: (ClyClassScope ofAll: {self class} in: environment)