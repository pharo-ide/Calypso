selection-methods
isMethodSelected
	"optimized version without extra colletion copy"
	
	^selectedItems anySatisfy: [ :each | each hasProperty: ClyMethodDefinitionProperty  ]