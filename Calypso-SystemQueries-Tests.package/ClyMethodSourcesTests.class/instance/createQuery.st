running
createQuery
	^ClyMethodSources 
		withString: self expectedSourceCodeSubstring
		from: (ClyClassScope of: {self class} in: environment)