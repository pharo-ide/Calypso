controlling
selectItemsWhere: conditionBlock

	| newItems |
	newItems := rootDataSource findItemsWhere: conditionBlock.
	self selectItems: newItems