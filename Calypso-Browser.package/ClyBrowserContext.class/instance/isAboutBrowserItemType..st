testing
isAboutBrowserItemType: itemTypeClass

	^selectedItems anySatisfy: [ :each | 
		each type includesBehavior: itemTypeClass ]