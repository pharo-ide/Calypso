execution
checkResultHasItemsWhere: itemConditionBlock

	^baseCritiqueQuery checkResultHasItemsWhere: [ :each |
		(itemConditionBlock value: each) and: [self selectsCritique: each]]