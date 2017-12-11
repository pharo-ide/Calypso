queries
findItemsWhere: conditionBlock

	^self findAllItemsBy: [ :ds | ds findItemsWhere: conditionBlock]