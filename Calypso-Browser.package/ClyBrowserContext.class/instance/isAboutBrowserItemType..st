testing
isAboutBrowserItemType: itemTypeClass

	^selectedItems anySatisfy: [ :each | 
		each type isCalypsoItemType: itemTypeClass ]