execution
checkResultHasItemsWhere: itemConditionBlock

	^self actualQuery hasResultWhere: [ :method | 
		(itemConditionBlock value: method) and: [self selectsMethod: method] ]