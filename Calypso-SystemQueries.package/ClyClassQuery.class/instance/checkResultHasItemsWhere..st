execution
checkResultHasItemsWhere: itemConditionBlock

	scope classesDo: [ :each | 
		((itemConditionBlock value: each) and: [self selectsClass: each]) 
			ifTrue: [^true]].
	
	^false