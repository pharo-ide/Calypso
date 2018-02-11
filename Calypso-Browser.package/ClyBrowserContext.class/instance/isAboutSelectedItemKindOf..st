testing
isAboutSelectedItemKindOf: anItemTypeClass

	^selectedItems anySatisfy: [ :each | 
		each isBasedOnItemType: anItemTypeClass ]