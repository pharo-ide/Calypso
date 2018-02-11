selection-method groups
selectedMethodGroupItems
	^(activeQueryView showsItemsOfType: ClyMethodGroup) 
		ifTrue: [ selectedItems ]
		ifFalse: [ tool methodGroupSelection items]