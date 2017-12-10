execution
checkResultHasItemsWhere: itemConditionBlock

	^critiqueQuery checkResultHasItemsWhere: [ :critique |
		 itemConditionBlock value: critique sourceAnchor entity ]