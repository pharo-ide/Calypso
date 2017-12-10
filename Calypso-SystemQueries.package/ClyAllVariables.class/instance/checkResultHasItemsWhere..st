execution
checkResultHasItemsWhere: itemConditionBlock

	scope variablesDo: [ :each | 
		(itemConditionBlock value: each) ifTrue: [^true]].
	^false