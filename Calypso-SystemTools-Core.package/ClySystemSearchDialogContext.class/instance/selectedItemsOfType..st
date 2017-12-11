private
selectedItemsOfType: itemTypeClass
	
	^selectedItems select: [ :each | 
		each isBasedOnItemType: itemTypeClass ]