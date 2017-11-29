controlling
selectItemsWith: actualObjects

	| newItems |
	newItems := rootDataSource queryView findItemsWith: actualObjects.
	self selectItems: newItems