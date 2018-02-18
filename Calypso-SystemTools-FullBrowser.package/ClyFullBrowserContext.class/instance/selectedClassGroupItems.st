selection-class groups
selectedClassGroupItems
	^(self activeQueryView showsItemsOfType: ClyClassGroup) 
		ifTrue: [ selectedItems ]
		ifFalse: [ 
			self browser packageView selection items
				select: [:each | each isBasedOnItemType: ClyClassGroup ]]