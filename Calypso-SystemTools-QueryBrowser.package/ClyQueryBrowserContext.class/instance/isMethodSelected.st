selection-methods
isMethodSelected
	"optimized version without extra collection copy"
	
	^selectedItems anySatisfy: [ :each | each isBasedOnItemType: ClyMethod  ]