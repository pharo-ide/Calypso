selection-classes
selectedClassItems
	^(activeQueryView showsItemsOfType: ClyClass) 
		ifTrue: [ selectedItems ]
		ifFalse: [ tool classSelection items]