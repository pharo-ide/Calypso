selection-methods
selectedMethodItems
	^(activeQueryView showsItemsOfType: ClyMethod) 
		ifTrue: [ selectedItems ]
		ifFalse: [ tool methodSelection items]