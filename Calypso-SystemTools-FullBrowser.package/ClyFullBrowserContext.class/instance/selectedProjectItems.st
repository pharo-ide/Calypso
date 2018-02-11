selection-projects
selectedProjectItems
	^(activeQueryView showsItemsOfType: ClyManagedProject) 
		ifTrue: [ selectedItems ]
		ifFalse: [ tool projectSelection items]