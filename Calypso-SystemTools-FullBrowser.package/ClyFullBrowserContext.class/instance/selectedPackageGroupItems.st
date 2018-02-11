selection-package groups
selectedPackageGroupItems
	^(activeQueryView showsItemsOfType: ClyPackageGroup) 
		ifTrue: [ selectedItems ]
		ifFalse: [ tool packageGroupSelection items]