execution
checkResultHasItemsWhere: itemConditionBlock

	scope classVariablesDo: [ :each | 
			(itemConditionBlock value: each) ifTrue: [^true]].
	^false