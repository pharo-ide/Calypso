execution
checkResultHasItemsWhere: itemConditionBlock

	^ subqueries anySatisfy: [ :each | 
			each checkResultHasItemsWhere: itemConditionBlock ]