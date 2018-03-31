controlling
selectItemsWith: actualObjects

	| newItems |
	newItems := rootDataSource queryView itemsWith: actualObjects.
	self selectItems: newItems