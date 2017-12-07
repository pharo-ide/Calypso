running
queryFromScope: scopeClass ofAll: basisObjects
	query scope: (scopeClass ofAll: basisObjects in: environment).
	self executeQuery