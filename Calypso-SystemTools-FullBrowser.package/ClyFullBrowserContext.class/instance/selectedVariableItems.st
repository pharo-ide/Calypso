selection-variables
selectedVariableItems
	^(self activeQueryView showsItemsOfType: ClyVariableMethodGroup) 
		ifTrue: [ selectedItems ]
		ifFalse: [ 
			self browser methodGroupSelection items 
				select: [:each | each isBasedOnItemType: ClyVariableMethodGroup ]]