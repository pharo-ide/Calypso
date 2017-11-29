selection-methods
selectedMethodItems
	^selectedItems select: [ :each | each isBasedOnItemType: ClyMethod ]