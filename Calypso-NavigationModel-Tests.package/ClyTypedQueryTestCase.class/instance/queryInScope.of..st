running
queryInScope: scopeClass of: basisObjects
	query scope: (scopeClass ofAll: basisObjects in: environment).
	self executeQuery