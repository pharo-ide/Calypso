selection-class groups
selectedClassGroupItems
	^(activeQueryView showsItemsOfType: ClyClassGroup) 
		ifTrue: [ selectedItems ]
		ifFalse: [ 
			tool packageView selection 
				select: [:each | each isBasedOnItemType: ClyClassGroup ]]