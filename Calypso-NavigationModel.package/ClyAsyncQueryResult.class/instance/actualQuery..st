accessing
actualQuery: aQuery
	aQuery isBoundToEnvironment ifFalse: [ 
		self error: 'Async query should be completaly initialized and bound to the environment' ].
	actualQuery := aQuery