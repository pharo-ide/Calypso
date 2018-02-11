selection-variables
selectedVariableItems
	^(activeQueryView showsItemsOfType: ClyVariableMethodGroup) 
		ifTrue: [ selectedItems ]
		ifFalse: [ 
			tool methodGroupSelection items 
				select: [:each | each isBasedOnItemType: ClyVariableMethodGroup ]]