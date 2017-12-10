execution
checkResultHasItemsWhere: itemConditionBlock
	
	scope packagesDo: [ :each | 
		each tagsForClasses ifNotEmpty: [ 
			^scope isQuery: ClyUntaggedClasses new hasResultWhere: itemConditionBlock]].
	
	^false