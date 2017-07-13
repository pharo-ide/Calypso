controlling
selectItemsWith: actualObjects

	| newItems |
	newItems := rootDataSource findItemsWith: actualObjects.
	self selectItems: newItems