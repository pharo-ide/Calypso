controlling
selectItemsWhich: conditionBlock

	| newItems |
	newItems := rootDataSource findItemsWhich: conditionBlock.
	self selectItems: newItems