selection-variables
selectedVariableItems
	^(self activeQueryView showsItemsOfType: ClyVariable) 
		ifTrue: [ selectedItems ]
		ifFalse: [ 
			self browser methodGroupSelection items 
				select: [:each | each isBasedOnItemType: ClyVariable ]]