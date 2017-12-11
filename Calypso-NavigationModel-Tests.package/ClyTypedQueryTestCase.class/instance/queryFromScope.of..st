running
queryFromScope: scopeClass of: aBasisObject
	query scope: (scopeClass of: aBasisObject in: environment).
	self executeQuery