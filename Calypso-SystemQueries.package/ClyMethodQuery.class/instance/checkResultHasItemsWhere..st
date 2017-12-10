execution
checkResultHasItemsWhere: itemConditionBlock

	scope methodsDo: [ :each | 
		((itemConditionBlock value: each) and: [self selectsMethod: each]) 
			ifTrue: [^true]].
	
	^false