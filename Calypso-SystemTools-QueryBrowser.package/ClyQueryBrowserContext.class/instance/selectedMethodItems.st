selection-methods
selectedMethodItems
	^selectedItems select: [ :each | each hasProperty: ClyMethodDefinitionProperty  ]