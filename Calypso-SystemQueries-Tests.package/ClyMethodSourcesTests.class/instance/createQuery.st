running
createQuery
	^ ClyMethodSources
		withString: self expectedSourceCodeSubstring
		from: (ClyClassScope ofAll: {self class} in: environment)