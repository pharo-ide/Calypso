selection-packages
selectedPackageItems
	^(activeQueryView showsItemsOfType: RPackage) 
		ifTrue: [ selectedItems ]
		ifFalse: [ tool packageSelection items]