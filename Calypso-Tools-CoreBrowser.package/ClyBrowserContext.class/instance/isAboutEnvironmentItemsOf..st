testing
isAboutEnvironmentItemsOf: itemTypeClass

	^selectedItems anySatisfy: [ :each | 
		each type includesBehavior: itemTypeClass ]