tests
testBindToEnvironmentShouldBindSubscopes
	| subscopes |
	scope := ClyCompositeScope on: {
		ClyScopeExample of: Object. 
		ClyScopeExample2 of: Array}.

	scope bindTo: environment.
	
	subscopes := scope subscopes asArray.
	self assert: subscopes first environment equals: environment.
	self assert: subscopes second environment equals: environment