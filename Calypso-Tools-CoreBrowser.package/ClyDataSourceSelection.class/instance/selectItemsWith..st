controlling
selectItemsWith: actualObjects

	| newItems |
	newItems := rootDataSource itemsView findItemsWith: actualObjects.
	self selectItems: newItems