selection-package groups
selectedPackageGroupItems
	^(self activeQueryView showsItemsOfType: ClyPackageGroup) 
		ifTrue: [ selectedItems ]
		ifFalse: [ self browser packageGroupSelection items]