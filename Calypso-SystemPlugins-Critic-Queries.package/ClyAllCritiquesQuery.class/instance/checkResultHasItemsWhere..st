execution
checkResultHasItemsWhere: itemConditionBlock
	
	self analyzedObjectsDo: [ :each | 
		(each critiques anySatisfy: itemConditionBlock)
			ifTrue: [ ^true ] ].
	
	^false